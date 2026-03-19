# ==============================
# Decision Tree PER CROP + FPGA Export
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
# Config
# ------------------------------
SCALE_OPTION = 2  # 1 = scale, 2 = raw
model_dir = "models_per_crop"
os.makedirs(model_dir, exist_ok=True)

# ------------------------------
# Load Dataset
# ------------------------------
df = pd.read_csv("datasets/crop-yield.csv")

# ------------------------------
# IEEE 754 helper
# ------------------------------
def float_to_ieee754_hex(value):
    packed = struct.pack('>d', float(value))
    hex_str = ''.join(f"{b:02X}" for b in packed)
    return f"64'h{hex_str}"

# ------------------------------
# Verilog Generator
# ------------------------------
def tree_to_verilog_if_else(tree_model, feature_names, function_name="LE", indent="    "):
    tree_ = tree_model.tree_

    def recurse(node, depth):
        indent_str = indent * depth
        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            feature = feature_names[tree_.feature[node]]
            threshold = float_to_ieee754_hex(tree_.threshold[node])

            left = tree_.children_left[node]
            right = tree_.children_right[node]

            code = f"{indent_str}if ({function_name}({feature}, {threshold})) begin\n"
            code += recurse(left, depth + 1)
            code += f"{indent_str}end else begin\n"
            code += recurse(right, depth + 1)
            code += f"{indent_str}end\n"
            return code
        else:
            value = float_to_ieee754_hex(tree_.value[node][0][0])
            return f"{indent_str}yield_f_reg = {value};\n"

    return recurse(0, 0)

# ------------------------------
# Python Tree Generator
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
    function_code += recurse(0, 1)
    return function_code

# ------------------------------
# TRAIN PER CROP
# ------------------------------
all_crops = df["Crop_Type"].unique()

for crop in all_crops:
    print(f"\n==============================")
    print(f"Training model for: {crop}")
    print(f"==============================")

    df_crop = df[df["Crop_Type"] == crop].copy()

    X = df_crop.drop(["Crop_Yield_ton_per_hectare", "Crop_Type"], axis=1)
    y = df_crop["Crop_Yield_ton_per_hectare"]

    # Encode categorical
    cat_cols = X.select_dtypes(include="object").columns
    encoders = {}
    for col in cat_cols:
        le = LabelEncoder()
        X[col] = le.fit_transform(X[col])
        encoders[col] = le

    # Scaling
    if SCALE_OPTION == 1:
        scaler = MinMaxScaler()
        X_used = scaler.fit_transform(X)
    else:
        X_used = X.values

    # Split
    X_train, X_test, y_train, y_test = train_test_split(
        X_used, y, test_size=0.2, random_state=42
    )

    # Train
    model = DecisionTreeRegressor(max_depth=6, random_state=42)
    model.fit(X_train, y_train)

    # Evaluate
    y_pred = model.predict(X_test)
    r2 = model.score(X_test, y_test)
    mae = np.mean(np.abs(y_test - y_pred))
    rmse = np.sqrt(np.mean((y_test - y_pred) ** 2))

    print(f"R2: {r2:.4f}, MAE: {mae:.4f}, RMSE: {rmse:.4f}")

    # ------------------------------
    # Save model
    # ------------------------------
    crop_name = crop.replace(" ", "_")

    pickle.dump(model, open(f"{model_dir}/model_{crop_name}.pkl", "wb"))
    pickle.dump(encoders, open(f"{model_dir}/encoders_{crop_name}.pkl", "wb"))

    if SCALE_OPTION == 1:
        pickle.dump(scaler, open(f"{model_dir}/scaler_{crop_name}.pkl", "wb"))

    # ------------------------------
    # Save tree text
    # ------------------------------
    feature_names = list(X.columns)
    tree_rules = export_text(model, feature_names=feature_names)

    with open(f"{model_dir}/tree_{crop_name}.log", "w") as f:
        f.write(tree_rules)

    # ------------------------------
    # Generate Verilog
    # ------------------------------
    verilog_code = tree_to_verilog_if_else(model, feature_names)

    with open(f"{model_dir}/tree_{crop_name}.v", "w") as f:
        f.write(verilog_code)

    # ------------------------------
    # Generate Python logic
    # ------------------------------
    python_code = tree_to_python_if_else(model, feature_names)

    with open(f"{model_dir}/tree_{crop_name}.py", "w") as f:
        f.write(python_code)

    # ------------------------------
    # Feature Importance
    # ------------------------------
    importances = model.feature_importances_

    feature_importance_list = sorted(
        zip(feature_names, importances),
        key=lambda x: x[1],
        reverse=True
    )

    print("\nFeature Importance:")
    for name, score in feature_importance_list:
        print(f"{name}: {score:.6f}")


    # ------------------------------
    # Create output directory
    # ------------------------------
    fig_dir = "output_figures"
    os.makedirs(fig_dir, exist_ok=True)
    # ------------------------------
    # Residuals Distribution Plot (SAVE)
    # ------------------------------
    residuals = y_test - y_pred

    plt.figure(figsize=(8, 6))
    sns.histplot(residuals, kde=True, bins=20)
    plt.xlabel("Residuals (Actual - Predicted)")
    plt.title(f"Residuals Distribution - {crop}")
    plt.grid(True)

    plt.savefig(f"{fig_dir}/residuals_{crop_name}.png", dpi=300, bbox_inches='tight')
    plt.close()

    # ------------------------------
    # Accuracy (Percentage)
    # ------------------------------
    epsilon = 1e-8
    mape = np.mean(np.abs((y_test - y_pred) / (y_test + epsilon))) * 100
    accuracy = 100 - mape
    print(f"MAPE: {mape:.2f}%")
    print(f"Accuracy: {accuracy:.2f}%")

    # ------------------------------
    # Feature Importance Plot (SAVE)
    # ------------------------------
    plt.figure(figsize=(10, 6))
    sns.barplot(
        x=[score for _, score in feature_importance_list],
        y=[name for name, _ in feature_importance_list]
    )

    plt.title(f"Feature Importance - {crop}")
    plt.xlabel("Importance Score")
    plt.ylabel("Features")

    plt.savefig(f"{fig_dir}/feature_importance_{crop_name}.png", dpi=300, bbox_inches='tight')
    plt.close()

    plt.figure(figsize=(8, 6))
    sns.scatterplot(x=X_test[:, 9], y=residuals)  # example first feature

    plt.xlabel(feature_names[9])
    plt.ylabel("Residuals")
    plt.title(f"Error vs {feature_names[9  ]} - {crop}")

    plt.savefig(f"{fig_dir}/error_vs_{feature_names[9]}_{crop_name}.png", dpi=300, bbox_inches='tight')
    plt.close()

print("\n All crop-specific models generated successfully.")
