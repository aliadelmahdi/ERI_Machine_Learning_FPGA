import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
from skl2onnx import convert_sklearn
from skl2onnx.common.data_types import FloatTensorType
import onnxruntime as ort
from sklearn.model_selection import train_test_split, GridSearchCV, cross_val_score
from sklearn.tree import DecisionTreeRegressor, export_text
from sklearn.metrics import mean_squared_error, r2_score
from sklearn.preprocessing import StandardScaler

# -------------------------
# 1. Load and preprocess data
# -------------------------
df = pd.read_csv('datasets/farm_data_encoded.csv')

# Feature engineering: growing days
df['sowing_date']  = pd.to_datetime(df['sowing_date'], format='%Y-%m-%d')
df['harvest_date'] = pd.to_datetime(df['harvest_date'], format='%Y-%m-%d')
df['growing_days'] = (df['harvest_date'] - df['sowing_date']).dt.days

# Features
features = [
    'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
    'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days', 'crop_type'
]

X = df[features]
y = df['yield_kg_per_hectare']

# Handle missing values
X = X.fillna(X.median())
y = y.fillna(y.median())

# Train-test split
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

# Numeric features
numeric_features = [
    'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
    'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days'
]

# -------------------------
# Feature scaling
# -------------------------
scaler = StandardScaler()

X_train_num = scaler.fit_transform(X_train[numeric_features])
X_test_num  = scaler.transform(X_test[numeric_features])

# Reattach crop_type as FIRST column (UNSCALED)
X_train = np.column_stack([
    X_train['crop_type'].values,
    X_train_num
])

X_test = np.column_stack([
    X_test['crop_type'].values,
    X_test_num
])

# Final feature order
features = ['crop_type'] + numeric_features

# -------------------------
# 2. Decision Tree Regressor
# -------------------------
dt = DecisionTreeRegressor(random_state=42)
param_grid = {
    'max_depth': [None, 10, 20, 30, 50],
    'min_samples_split': [2, 5, 10, 20, 50],
    'min_samples_leaf': [1, 2, 5, 10, 20],
    'max_features': [None, 'sqrt', 'log2'],  # None means use all features
    'splitter': ['best', 'random']
}
# Decision Tree Test MSE: 1355421.62, R²: 0.019
grid_dt = GridSearchCV(
    dt, param_grid, cv=5, scoring='neg_mean_squared_error', n_jobs=1
)
grid_dt.fit(X_train, y_train)
best_dt = grid_dt.best_estimator_

# -------------------------
# 3. Cross-validation R²
# -------------------------
scores_dt = cross_val_score(best_dt, X_train, y_train,
                            cv=5, scoring='r2')
print(f"Decision Tree CV R²: {scores_dt.mean():.3f} ± {scores_dt.std():.3f}")

# -------------------------
# 4. Final evaluation on test set
# -------------------------
y_pred_dt = best_dt.predict(X_test)
mse = mean_squared_error(y_test, y_pred_dt)
r2  = r2_score(y_test, y_pred_dt)
print(f"Decision Tree Test MSE: {mse:.2f}, R²: {r2:.3f}")

# -------------------------
# 5. Decision tree visualization
# -------------------------
# Export tree rules
tree_rules = export_text(best_dt, feature_names=features)
print("\nLearned Decision Tree Rules:\n")
print(tree_rules)

# Optional: scatter plot of predicted vs actual
sns.set(style="whitegrid")
OUTPUT_DIR = "output_figures"
os.makedirs(OUTPUT_DIR, exist_ok=True)

plt.figure(figsize=(6,6))
sns.scatterplot(x=y_test, y=y_pred_dt, alpha=0.6)
plt.plot([y_test.min(), y_test.max()], [y_test.min(), y_test.max()], 'r--')
plt.xlabel('Actual Yield (kg/ha)')
plt.ylabel('Predicted Yield (kg/ha)')
plt.title('Decision Tree: Actual vs Predicted Yield')
plt.tight_layout()
plt.savefig(os.path.join(OUTPUT_DIR, "dt_actual_vs_predicted.png"))
plt.close()

# Residual distribution
res = y_test - y_pred_dt
plt.figure(figsize=(6,4))
sns.histplot(res, bins=30, kde=True, color='teal')
plt.title('Decision Tree Residuals Distribution')
plt.xlabel('Residual (Actual − Predicted)')
plt.tight_layout()
plt.savefig(os.path.join(OUTPUT_DIR, "dt_residuals_distribution.png"))
plt.close()

# -------------------------
# 6. Export Decision Tree rules to a log file
# -------------------------
LOG_FILE = "logs/decision_tree.log"
with open(LOG_FILE, "w") as f:
    f.write("Decision Tree Rules:\n")
    f.write("="*60 + "\n\n")
    f.write(tree_rules)
    f.write("\n" + "="*60 + "\n")

print(f"Decision Tree rules exported to {LOG_FILE}")
# -------------------------
# 6a. Compute mean and std for each feature and log it
# -------------------------
feature_stats = X.describe().loc[['mean', 'std']]  # compute mean & std

with open(LOG_FILE, "a") as f:  # append to existing log
    f.write("\nFeature Statistics (mean ± std):\n")
    f.write("="*60 + "\n")
    for feature in features:
        mean_val = feature_stats.at['mean', feature]
        std_val  = feature_stats.at['std', feature]
        f.write(f"{feature:<20}: {mean_val:.3f} ± {std_val:.3f}\n")
    f.write("="*60 + "\n")

print(f"Feature statistics appended to {LOG_FILE}")

# -------------------------
# 7. Predict first 7 rows and log actual vs predicted
# -------------------------
first_rows = X.iloc[:7]  # original, unscaled first 7 rows

# Scale ONLY numeric features
first_rows_num = scaler.transform(first_rows[numeric_features])

# Reattach crop_type as FIRST column
first_rows_scaled = np.column_stack([
    first_rows['crop_type'].values,
    first_rows_num
])

# Predict
y_pred_first7 = best_dt.predict(first_rows_scaled)
y_actual_first7 = y.iloc[:7].values

LOG_FILE_FIRST7 = "logs/first7_predictions.log"
with open(LOG_FILE_FIRST7, "w") as f:
    f.write("Prediction for First 7 Rows\n")
    f.write("="*60 + "\n")
    f.write(f"{'Row':<5}{'Actual Yield':<20}{'Predicted Yield':<20}\n")
    f.write("-"*60 + "\n")
    for i, (actual, pred) in enumerate(zip(y_actual_first7, y_pred_first7), start=1):
        f.write(f"{i:<5}{actual:<20.2f}{pred:<20.2f}\n")
    f.write("="*60 + "\n")

print(f"First 7 rows actual vs predicted values exported to {LOG_FILE_FIRST7}")
