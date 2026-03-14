# ============================================
# Encode categorical features, predict + generate HEX and mapped files
# ============================================

import pandas as pd
import numpy as np
import pickle
import importlib.util
import os

# --------------------------------------------
# Config
# --------------------------------------------
DATA_PATH = "datasets/crop-yield.csv"
MODEL_DIR = "models"
TREE_FILE = os.path.join(MODEL_DIR, "decision_tree_python.py")
OUTPUT_CSV = "datasets/crop-yield_with_prediction_m4.csv"

HEX_DIR = "models/hex_outputs"      # 64-bit IEEE HEX
MAPPED_DIR = "models/mapped_hex"    # human-readable mapped integers

os.makedirs(HEX_DIR, exist_ok=True)
os.makedirs(MAPPED_DIR, exist_ok=True)

SCALE_OPTION = 2  # MUST match training

# --------------------------------------------
# 1. Load Dataset
# --------------------------------------------
df = pd.read_csv(DATA_PATH)
df_output = df.copy()

# --------------------------------------------
# 2. Encode categorical columns using enum values
# --------------------------------------------
soil_type_map = {"Clay": 0, "Loamy": 1, "Sandy": 2, "Silt": 3}
region_map    = {"Central": 0, "East": 1, "North": 2, "South": 3, "West": 4}
season_map    = {"Kharif": 0, "Rabi": 1, "Zaid": 2}
crop_type_map = {"Cotton":0, "Maize":1, "Potato":2, "Rice":3, "Sugarcane":4, "Wheat":5}
irrigation_map= {"Canal":0, "Drip":1, "Rainfed":2, "Sprinkler":3}

df["Soil_Type"]       = df["Soil_Type"].map(soil_type_map)
df["Region"]          = df["Region"].map(region_map)
df["Season"]          = df["Season"].map(season_map)
df["Crop_Type"]       = df["Crop_Type"].map(crop_type_map)
df["Irrigation_Type"] = df["Irrigation_Type"].map(irrigation_map)

# --------------------------------------------
# 3. Separate Features
# --------------------------------------------
X = df.drop("Crop_Yield_ton_per_hectare", axis=1)
y_actual = df["Crop_Yield_ton_per_hectare"].values

# --------------------------------------------
# 4. Load Encoders & Apply (skip enum columns)
# --------------------------------------------
if os.path.exists(f"{MODEL_DIR}/encoders.pkl"):
    encoders = pickle.load(open(f"{MODEL_DIR}/encoders.pkl", "rb"))
    for col, le in encoders.items():
        if col not in ["Soil_Type", "Region", "Season", "Crop_Type", "Irrigation_Type"]:
            X[col] = le.transform(X[col])

# --------------------------------------------
# 5. Apply Scaling (if used)
# --------------------------------------------
if SCALE_OPTION == 1:
    scaler = pickle.load(open(f"{MODEL_DIR}/scaler.pkl", "rb"))
    X_used = scaler.transform(X)
else:
    X_used = X.values

# --------------------------------------------
# 6. Dynamically Load Tree File
# --------------------------------------------
spec = importlib.util.spec_from_file_location("decision_tree_python", TREE_FILE)
tree_module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(tree_module)
predict_tree = tree_module.predict_tree

print("Tree file loaded successfully.")

# --------------------------------------------
# 7. Predict All Rows
# --------------------------------------------
feature_names = list(X.columns)
predictions = []

for row in X_used:
    feature_dict = {feature_names[i]: row[i] for i in range(len(feature_names))}
    y_pred = predict_tree(feature_dict)
    predictions.append(y_pred)

# --------------------------------------------
# 8. Save Output CSV (original feature)
# --------------------------------------------
df_output["predicted_m4"] = predictions
df_output.to_csv(OUTPUT_CSV, index=False)

print("Prediction complete.")
print(f"Saved CSV file: {OUTPUT_CSV}")
print(f"Total rows predicted: {len(predictions)}")

# --------------------------------------------
# 9. Functions to generate 64-bit HEX
# --------------------------------------------
def float64_to_hex(f):
    """Convert a float to 64-bit IEEE 754 hexadecimal representation."""
    return hex(np.float64(f).view(np.uint64))

# --------------------------------------------
# 10. Save 64-bit HEX files
# --------------------------------------------
# Actual yield HEX
with open(os.path.join(HEX_DIR, "actual_yield.hex"), "w") as f:
    for val in y_actual:
        f.write(float64_to_hex(val) + "\n")

# Predicted yield HEX
with open(os.path.join(HEX_DIR, "predicted_yield.hex"), "w") as f:
    for val in predictions:
        f.write(float64_to_hex(val) + "\n")

# Input features HEX
for col in X.columns:
    hex_file_path = os.path.join(HEX_DIR, f"{col}.hex")
    with open(hex_file_path, "w") as f:
        for val in X[col].values:
            f.write(float64_to_hex(val) + "\n")

print(f"64-bit HEX files saved in folder: {HEX_DIR}")

# --------------------------------------------
# 11. Save mapped integers (human-readable) in mapped_hex
# --------------------------------------------
# Actual yield (as-is)
with open(os.path.join(MAPPED_DIR, "actual_yield.txt"), "w") as f:
    for val in y_actual:
        f.write(str(val) + "\n")

# Predicted yield (as-is)
with open(os.path.join(MAPPED_DIR, "predicted_m4.txt"), "w") as f:
    for val in predictions:
        f.write(str(val) + "\n")

# Input features mapped integers
for col in X.columns:
    map_file_path = os.path.join(MAPPED_DIR, f"{col}.txt")
    with open(map_file_path, "w") as f:
        for val in X[col].values:
            f.write(str(val) + "\n")

print(f"Mapped integer files saved in folder: {MAPPED_DIR}")