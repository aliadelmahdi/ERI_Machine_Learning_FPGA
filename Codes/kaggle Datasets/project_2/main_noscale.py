# import pandas as pd
# import numpy as np
# import matplotlib.pyplot as plt
# import seaborn as sns
# import os
# from skl2onnx import convert_sklearn
# from skl2onnx.common.data_types import FloatTensorType
# import onnxruntime as ort
# from sklearn.model_selection import train_test_split, GridSearchCV, cross_val_score
# from sklearn.tree import DecisionTreeRegressor, export_text
# from sklearn.metrics import mean_squared_error, r2_score
# from sklearn.metrics import r2_score, mean_absolute_error, mean_squared_error

# # no scale Decision Tree Test MSE: 1528706.44, R²: -0.107
# # scale Decision Tree Test MSE: 1355421.62, R²: 0.019
# # -------------------------
# # 1. Load and preprocess data
# # -------------------------
# df = pd.read_csv('datasets/farm_data_encoded.csv')

# # Feature engineering: growing days
# df['sowing_date']  = pd.to_datetime(df['sowing_date'], format='%Y-%m-%d')
# df['harvest_date'] = pd.to_datetime(df['harvest_date'], format='%Y-%m-%d')
# df['growing_days'] = (df['harvest_date'] - df['sowing_date']).dt.days

# # Features
# features = [
#     'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
#     'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days',
#     'crop_type'
# ]

# X = df[features]
# y = df['yield_kg_per_hectare']

# # Handle missing values
# X = X.fillna(X.median())
# y = y.fillna(y.median())

# # Train-test split
# X_train, X_test, y_train, y_test = train_test_split(
#     X, y, test_size=0.2, random_state=42
# )

# # -------------------------
# # 2. Decision Tree Regressor
# # -------------------------
# dt = DecisionTreeRegressor(random_state=42)

# param_grid = {
#     'max_depth': [None, 10, 20, 30, 50],
#     'min_samples_split': [2, 5, 10, 20, 50],
#     'min_samples_leaf': [1, 2, 5, 10, 20],
#     'max_features': [None, 'sqrt', 'log2'],
#     'splitter': ['best', 'random']
# }

# grid_dt = GridSearchCV(
#     dt, param_grid, cv=5,
#     scoring='neg_mean_squared_error',
#     n_jobs=1
# )

# grid_dt.fit(X_train, y_train)
# best_dt = grid_dt.best_estimator_

# # -------------------------
# # 3. Cross-validation R²
# # -------------------------
# scores_dt = cross_val_score(best_dt, X_train, y_train,
#                             cv=5, scoring='r2')

# print(f"Decision Tree CV R²: {scores_dt.mean():.3f} ± {scores_dt.std():.3f}")

# # -------------------------
# # 4. Final evaluation on test set
# # -------------------------
# y_pred_dt = best_dt.predict(X_test)

# mse = mean_squared_error(y_test, y_pred_dt)
# r2  = r2_score(y_test, y_pred_dt)

# print(f"Decision Tree Test MSE: {mse:.2f}, R²: {r2:.3f}")

# # -------------------------
# # 4a. Accuracy within ±tolerance
# # -------------------------
# tolerance = 0.25  # 25%
# correct_predictions = np.abs(y_test - y_pred_dt) / y_test <= tolerance
# accuracy_percent = 100 * correct_predictions.mean()

# print(f"Predictions within ±{tolerance*100:.0f}% of actual yield: {accuracy_percent:.2f}%")

# # -------------------------
# # 5. Decision tree rules
# # -------------------------
# tree_rules = export_text(best_dt, feature_names=features)

# print("\nLearned Decision Tree Rules:\n")
# print(tree_rules)

# # -------------------------
# # 6. Visualization
# # -------------------------
# sns.set(style="whitegrid")
# OUTPUT_DIR = "output_figures"
# os.makedirs(OUTPUT_DIR, exist_ok=True)

# # Actual vs Predicted
# plt.figure(figsize=(6,6))
# sns.scatterplot(x=y_test, y=y_pred_dt, alpha=0.6)
# plt.plot([y_test.min(), y_test.max()],
#          [y_test.min(), y_test.max()], 'r--')
# plt.xlabel('Actual Yield (kg/ha)')
# plt.ylabel('Predicted Yield (kg/ha)')
# plt.title('Decision Tree: Actual vs Predicted Yield')
# plt.tight_layout()
# plt.savefig(os.path.join(OUTPUT_DIR, "dt_actual_vs_predicted.png"))
# plt.close()

# # Residual distribution
# res = y_test - y_pred_dt
# plt.figure(figsize=(6,4))
# sns.histplot(res, bins=30, kde=True, color='teal')
# plt.title('Decision Tree Residuals Distribution')
# plt.xlabel('Residual (Actual − Predicted)')
# plt.tight_layout()
# plt.savefig(os.path.join(OUTPUT_DIR, "dt_residuals_distribution.png"))
# plt.close()

# print(f"Visualizations saved in {OUTPUT_DIR}")

# # -------------------------
# # 7. Export Decision Tree rules to log
# # -------------------------
# os.makedirs("logs", exist_ok=True)
# LOG_FILE = "logs/decision_tree.log"

# with open(LOG_FILE, "w") as f:
#     f.write("Decision Tree Rules:\n")
#     f.write("="*60 + "\n\n")
#     f.write(tree_rules)
#     f.write("\n" + "="*60 + "\n")

# print(f"Decision Tree rules exported to {LOG_FILE}")

# # -------------------------
# # 8. Feature statistics
# # -------------------------
# feature_stats = X.describe().loc[['mean', 'std']]

# with open(LOG_FILE, "a") as f:
#     f.write("\nFeature Statistics (mean ± std):\n")
#     f.write("="*60 + "\n")
#     for feature in features:
#         mean_val = feature_stats.at['mean', feature]
#         std_val  = feature_stats.at['std', feature]
#         f.write(f"{feature:<20}: {mean_val:.3f} ± {std_val:.3f}\n")
#     f.write("="*60 + "\n")

# print(f"Feature statistics appended to {LOG_FILE}")

# # -------------------------
# # 9. Predict first 7 rows
# # -------------------------
# first_rows = X.iloc[:7]
# y_pred_first7 = best_dt.predict(first_rows)
# y_actual_first7 = y.iloc[:7].values

# LOG_FILE_FIRST7 = "logs/first7_predictions.log"

# with open(LOG_FILE_FIRST7, "w") as f:
#     f.write("Prediction for First 7 Rows\n")
#     f.write("="*60 + "\n")
#     f.write(f"{'Row':<5}{'Actual Yield':<20}{'Predicted Yield':<20}\n")
#     f.write("-"*60 + "\n")
#     for i, (actual, pred) in enumerate(zip(y_actual_first7, y_pred_first7), start=1):
#         f.write(f"{i:<5}{actual:<20.2f}{pred:<20.2f}\n")
#     f.write("="*60 + "\n")

# print(f"First 7 rows actual vs predicted values exported to {LOG_FILE_FIRST7}")
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.preprocessing import StandardScaler
from sklearn.neighbors import KNeighborsRegressor
from sklearn.metrics import mean_squared_error, r2_score

# 1. Load data
df = pd.read_csv('datasets/farm_data_encoded.csv')

df['sowing_date']  = pd.to_datetime(df['sowing_date'], format='%Y-%m-%d')
df['harvest_date'] = pd.to_datetime(df['harvest_date'], format='%Y-%m-%d')
df['growing_days'] = (df['harvest_date'] - df['sowing_date']).dt.days

features = [
    'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
    'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days',
    'crop_type'
]

X = df[features].fillna(df[features].median())
y = df['yield_kg_per_hectare'].fillna(df['yield_kg_per_hectare'].median())

# 2. Optional: remove outliers (IQR method)
def remove_outliers(df, feature_columns):
    for col in feature_columns + ['yield_kg_per_hectare']:
        Q1 = df[col].quantile(0.25)
        Q3 = df[col].quantile(0.75)
        IQR = Q3 - Q1
        lower = Q1 - 1.5 * IQR
        upper = Q3 + 1.5 * IQR
        df = df[(df[col] >= lower) & (df[col] <= upper)]
    return df

df_clean = remove_outliers(df, features)
X_clean = df_clean[features]
y_clean = df_clean['yield_kg_per_hectare']

# 3. Train-test split
X_train, X_test, y_train, y_test = train_test_split(
    X_clean, y_clean, test_size=0.2, random_state=42
)

# 4. Scale features (critical for KNN)
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

# 5. KNN regression
param_grid = {
    'n_neighbors': [3, 5, 7, 10, 15],
    'weights': ['uniform', 'distance'],
    'p': [1, 2]  # Manhattan or Euclidean
}

knn = KNeighborsRegressor()
grid_knn = GridSearchCV(knn, param_grid, cv=5, scoring='r2', n_jobs=1)
grid_knn.fit(X_train_scaled, y_train)

best_knn = grid_knn.best_estimator_
y_pred_knn = best_knn.predict(X_test_scaled)

# 6. Evaluate
tolerance = 0.25
accuracy_percent = 100 * ((np.abs(y_test - y_pred_knn) / y_test) <= tolerance).mean()
mse = mean_squared_error(y_test, y_pred_knn)
r2  = r2_score(y_test, y_pred_knn)

print(f"KNN Accuracy ±{tolerance*100:.0f}%: {accuracy_percent:.2f}%")
print(f"Test MSE: {mse:.2f}, R²: {r2:.3f}")