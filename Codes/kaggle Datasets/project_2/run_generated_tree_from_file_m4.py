# ============================================
# Load Generated Tree File and Predict CSV
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
OUTPUT_PATH = "datasets/crop-yield_with_prediction_m4.csv"
SCALE_OPTION = 2  # MUST match training

# --------------------------------------------
# 1. Load Dataset
# --------------------------------------------
df = pd.read_csv(DATA_PATH)
df_output = df.copy()

# --------------------------------------------
# 2. Separate Features
# --------------------------------------------
X = df.drop("Crop_Yield_ton_per_hectare", axis=1)

# --------------------------------------------
# 3. Load Encoders & Apply
# --------------------------------------------
encoders = pickle.load(open(f"{MODEL_DIR}/encoders.pkl", "rb"))

for col, le in encoders.items():
    X[col] = le.transform(X[col])

# --------------------------------------------
# 4. Apply Scaling (if used)
# --------------------------------------------
if SCALE_OPTION == 1:
    scaler = pickle.load(open(f"{MODEL_DIR}/scaler.pkl", "rb"))
    X_used = scaler.transform(X)
else:
    X_used = X.values

# --------------------------------------------
# 5. Dynamically Load Tree File
# --------------------------------------------
spec = importlib.util.spec_from_file_location("decision_tree_python", TREE_FILE)
tree_module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(tree_module)

predict_tree = tree_module.predict_tree  # Load function

print("Tree file loaded successfully.")

# --------------------------------------------
# 6. Predict All Rows
# --------------------------------------------
feature_names = list(X.columns)
predictions = []

for row in X_used:
    feature_dict = {feature_names[i]: row[i] for i in range(len(feature_names))}
    y_pred = predict_tree(feature_dict)
    predictions.append(y_pred)

# --------------------------------------------
# 7. Save Output CSV
# --------------------------------------------
df_output["predicted_m4"] = predictions
df_output.to_csv(OUTPUT_PATH, index=False)

print("Prediction complete.")
print(f"Saved file: {OUTPUT_PATH}")
print(f"Total rows predicted: {len(predictions)}")