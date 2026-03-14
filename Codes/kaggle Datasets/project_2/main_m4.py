# ==============================
# Decision Tree + LUT for FPGA (Direct Tree + IEEE 754)
#https://github.com/Arif-miad/crop-yield-prediction-app/blob/main/requirements.txt
#https://www.kaggle.com/datasets/miadul/smart-crop-recommendation-dataset/code
# ==============================

import pandas as pd
import numpy as np
import pickle
import os
import struct
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, MinMaxScaler
from sklearn.tree import DecisionTreeRegressor, export_text
from sklearn.tree import _tree
import matplotlib.pyplot as plt
import seaborn as sns
# ------------------------------
# Config: Scaling Option
# ------------------------------
SCALE_OPTION = 2  # 1 = scale, 2 = raw

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
# 4. Scale Features (optional)
# ------------------------------
if SCALE_OPTION == 1:
    scaler = MinMaxScaler()
    X_used = scaler.fit_transform(X)
    print("Scaling applied.")
else:
    X_used = X.values
    print("Scaling skipped.")

# ------------------------------
# 5. Train/Test Split
# ------------------------------
X_train, X_test, y_train, y_test = train_test_split(
    X_used, y, test_size=0.2, random_state=42
)

# ------------------------------
# 6. Train Decision Tree
# ------------------------------
tree_model = DecisionTreeRegressor(random_state=42, max_depth=9, max_features=None)
tree_model.fit(X_train, y_train)

# ------------------------------
# 7. Evaluate
# ------------------------------
y_pred = tree_model.predict(X_test)
r2 = tree_model.score(X_test, y_test)
mae = np.mean(np.abs(y_test - y_pred))
rmse = np.sqrt(np.mean((y_test - y_pred) ** 2))
mape = np.mean(np.abs((y_test - y_pred) / y_test)) * 100

print(f"R2: {r2:.4f}, MAE: {mae:.4f}, RMSE: {rmse:.4f}, MAPE: {mape:.2f}%")

# ------------------------------
# 8. Save Model, Encoders, Scaler
# ------------------------------
model_dir = "models"
os.makedirs(model_dir, exist_ok=True)

pickle.dump(tree_model, open(f"{model_dir}/decision_tree.pkl", "wb"))
pickle.dump(encoders, open(f"{model_dir}/encoders.pkl", "wb"))
if SCALE_OPTION == 1:
    pickle.dump(scaler, open(f"{model_dir}/scaler.pkl", "wb"))

# ------------------------------
# 9. Save Tree Structure
# ------------------------------
tree_rules = export_text(tree_model, feature_names=list(X.columns))
with open(f"{model_dir}/decision_tree_log.log", "w") as f:
    f.write(tree_rules)

# ------------------------------
# Helper: IEEE 754 64-bit (real conversion)
# ------------------------------
def float_to_ieee754_hex(value):
    """
    Convert a Python float to 64-bit IEEE 754 hex representation.
    Returns a string like 64'h400921FB54442D18
    """
    # '>d' = big-endian double-precision (64-bit)
    packed = struct.pack('>d', float(value))
    # Convert each byte to 2-digit hex
    hex_str = ''.join(f"{b:02X}" for b in packed)
    return f"64'h{hex_str}"


# ------------------------------
# Convert Tree to Verilog Using LE Module (64-bit)
# ------------------------------
def tree_to_verilog_if_else(tree_model, feature_names, function_name="LE", indent="    "):
    tree_ = tree_model.tree_

    def recurse(node, depth):
        indent_str = indent * depth
        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            feature = feature_names[tree_.feature[node]]
            threshold = tree_.threshold[node]
            # Use 64-bit IEEE 754 real conversion
            threshold_hex = float_to_ieee754_hex(threshold)

            left = tree_.children_left[node]
            right = tree_.children_right[node]

            code = f"{indent_str}if ({function_name}({feature}, {threshold_hex})) begin\n"
            code += recurse(left, depth + 1)
            code += f"{indent_str}end else begin  // {feature} > {threshold_hex}\n"
            code += recurse(right, depth + 1)
            code += f"{indent_str}end\n"  # close non-leaf if-else
            return code
        else:
            # Leaf node: assign yield using 64-bit IEEE 754
            value = tree_.value[node][0][0]
            value_hex = float_to_ieee754_hex(value)
            return f"{indent_str}yield_f_reg = {value_hex};\n"

    return recurse(0, 0)


# ------------------------------
# Generate Verilog
# ------------------------------
feature_names = list(X.columns)
verilog_code = tree_to_verilog_if_else(tree_model, feature_names)
with open(f"{model_dir}/decision_tree.v", "w") as f:
    f.write(verilog_code)

print("Verilog code generated with exact tree logic and 64-bit IEEE 754 numbers.")

# List of all feature names
feature_names = list(X.columns)

# Get the indices of features used in splits
used_feature_indices = tree_model.tree_.feature
# TREE_UNDEFINED = -2, meaning leaf nodes
used_feature_indices = used_feature_indices[used_feature_indices != -2]

# Get the unique features actually used
used_features = [feature_names[i] for i in np.unique(used_feature_indices)]

print("Features used in the trained tree:")
for f in used_features:
    print(f)


# # ------------------------------
# #  Scatter plot: Actual vs Predicted
# # ------------------------------
# plt.figure(figsize=(8, 6))
# sns.scatterplot(x=y_test, y=y_pred, color='blue', s=60)
# plt.plot([y_test.min(), y_test.max()], [y_test.min(), y_test.max()], 'r--', linewidth=2)  # diagonal line
# plt.xlabel("Actual Crop Yield (ton/ha)")
# plt.ylabel("Predicted Crop Yield (ton/ha)")
# plt.title("Actual vs Predicted Crop Yield")
# plt.grid(True)
# plt.show()

# # ------------------------------
# # Optional: Residuals plot
# # ------------------------------
# residuals = y_test - y_pred
# plt.figure(figsize=(8, 6))
# sns.histplot(residuals, kde=True, color='green', bins=20)
# plt.xlabel("Residuals (Actual - Predicted)")
# plt.title("Residuals Distribution")
# plt.show()

# ------------------------------
# Print Encoding Mechanism
# ------------------------------
print("\n=== Full Feature Encoding & Scaling Details ===")
for i, col in enumerate(X.columns):
    # Categorical column
    if col in encoders:
        le = encoders[col]
        print(f"\nColumn (Categorical): {col}")
        print("  Classes:", list(le.classes_))
        print("  Label Mapping:", {cls: idx for idx, cls in enumerate(le.classes_)})
        # MinMax scaling info
        if SCALE_OPTION == 1:
            scaled_min = scaler.data_min_[i]
            scaled_max = scaler.data_max_[i]
            print(f"  Scaled MinMax (after encoding): min={scaled_min}, max={scaled_max}")
    else:
        # Numeric column
        print(f"\nColumn (Numeric): {col}")
        if SCALE_OPTION == 1:
            scaled_min = scaler.data_min_[i]
            scaled_max = scaler.data_max_[i]
            print(f"  Min={scaled_min}, Max={scaled_max}")
        else:
            raw_min = X[col].min()
            raw_max = X[col].max()
            print(f"  Min={raw_min}, Max={raw_max}")

# Print scaling info if applied
if SCALE_OPTION == 1:
    print("\n=== Scaling Details (MinMaxScaler) ===")
    for i, col in enumerate(X.columns):
        min_val = scaler.data_min_[i]
        max_val = scaler.data_max_[i]
        print(f"{col}: min={min_val}, max={max_val}")

# ------------------------------
# 13. Generate Pure Python Tree (If-Else Logic)
# ------------------------------

def tree_to_python_if_else(tree_model, feature_names, function_name="predict_tree", indent="    "):
    tree_ = tree_model.tree_

    def recurse(node, depth):
        indent_str = indent * depth
        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            feature = feature_names[tree_.feature[node]]
            threshold = tree_.threshold[node]

            left = tree_.children_left[node]
            right = tree_.children_right[node]

            code = f"{indent_str}if features['{feature}'] <= {threshold:.10f}:\n"
            code += recurse(left, depth + 1)
            code += f"{indent_str}else:\n"
            code += recurse(right, depth + 1)
            return code
        else:
            value = tree_.value[node][0][0]
            return f"{indent_str}return {value:.10f}\n"

    function_code = f"def {function_name}(features):\n"
    function_code += f"{indent}'''Pure Python Decision Tree Logic'''\n"
    function_code += recurse(0, 1)

    return function_code


# Generate Python tree code
python_tree_code = tree_to_python_if_else(tree_model, feature_names)

# Save to file
with open(f"{model_dir}/decision_tree_python.py", "w") as f:
    f.write(python_tree_code)

print("Pure Python tree logic generated and saved as decision_tree_python.py")