# ==============================
# Crop Yield Prediction Pipeline
# ==============================

import pandas as pd
import numpy as np
import pickle

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, MinMaxScaler
from sklearn.metrics import r2_score, mean_absolute_error, mean_squared_error

from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from sklearn.tree import DecisionTreeRegressor
from xgboost import XGBRegressor
import os
from sklearn.metrics import r2_score, mean_absolute_error, mean_squared_error
import numpy as np
from sklearn.tree import export_text
# ------------------------------
# 1. Load Dataset
# ------------------------------
df = pd.read_csv("datasets/crop-yield.csv")

# ------------------------------
# 2. Split Features & Target
# ------------------------------
X = df.drop("Crop_Yield_ton_per_hectare", axis=1)
y = df["Crop_Yield_ton_per_hectare"]

# ------------------------------
# 3. Encode Categorical Columns
# ------------------------------
cat_cols = X.select_dtypes(include="object").columns

encoders = {}
for col in cat_cols:
    le = LabelEncoder()
    X[col] = le.fit_transform(X[col])
    encoders[col] = le

# ------------------------------
# 4. Scale Features
# ------------------------------
scaler = MinMaxScaler()
X_scaled = scaler.fit_transform(X)

# ------------------------------
# 5. Train Test Split
# ------------------------------
X_train, X_test, y_train, y_test = train_test_split(
    X_scaled, y, test_size=0.2, random_state=42
)

# ------------------------------
# 6. Initialize Models
# ------------------------------
models = {
    "LinearRegression": LinearRegression(),
    "DecisionTree": DecisionTreeRegressor(random_state=42),
    "RandomForest": RandomForestRegressor(n_estimators=200, random_state=42),
    "GradientBoosting": GradientBoostingRegressor(random_state=42),
    "XGBoost": XGBRegressor(
        n_estimators=300,
        learning_rate=0.05,
        max_depth=6,
        random_state=42,
        verbosity=0
    )
}

# ------------------------------
# 7. Train & Evaluate Models
# ------------------------------
results = {}

for name, model in models.items():
    model.fit(X_train, y_train)
    y_pred = model.predict(X_test)

    results[name] = {
        "R2": r2_score(y_test, y_pred),
        "MAE": mean_absolute_error(y_test, y_pred),
        "RMSE": np.sqrt(mean_squared_error(y_test, y_pred))
    }

results_df = pd.DataFrame(results).T
print("\nModel Performance:\n")
print(results_df)

# ------------------------------
# 8. Select Best Model
# ------------------------------
best_model_name = results_df["R2"].idxmax()
best_model = models[best_model_name]

print(f"\nBest Model: {best_model_name}")

# ------------------------------
# 9. Save Model & Preprocessing
# ------------------------------
# Ensure the directory exists
model_dir = "models"
os.makedirs(model_dir, exist_ok=True)

# Save model, encoders, and scaler
pickle.dump(best_model, open(f"{model_dir}/model.pkl", "wb"))
pickle.dump(encoders, open(f"{model_dir}/encoders.pkl", "wb"))
pickle.dump(scaler, open(f"{model_dir}/scaler.pkl", "wb"))

print("\nModel, encoders, and scaler saved successfully.")

for name, model in models.items():
    y_pred = model.predict(X_test)
    
    r2 = r2_score(y_test, y_pred)
    mae = mean_absolute_error(y_test, y_pred)
    rmse = np.sqrt(mean_squared_error(y_test, y_pred))
    mape = np.mean(np.abs((y_test - y_pred) / y_test)) * 100
    pseudo_accuracy = 100 - mape  # Rough accuracy in %
    
    print(f"\n{name} Performance:")
    print(f"R2 Score: {r2:.4f}")
    print(f"MAE: {mae:.4f}")
    print(f"RMSE: {rmse:.4f}")
    print(f"MAPE: {mape:.2f}%")
    print(f"Approx. Accuracy: {pseudo_accuracy:.2f}%")

tree_model = models["DecisionTree"]

# Export tree as text
tree_rules = export_text(tree_model, feature_names=list(X.columns))

# Save to log file
with open("models/decision_tree_log.log", "w") as f:
    f.write(tree_rules)

print("\nDecision tree structure saved to 'models/decision_tree_log.log'")