# # Reference: https://www.kaggle.com/code/adityaver/unit-5

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
# from sklearn.ensemble import RandomForestRegressor
# from sklearn.metrics import mean_squared_error, r2_score
# from sklearn.preprocessing import StandardScaler

# # 1. Load and preprocess data
# df = pd.read_csv('datasets/Smart_Farming_Crop_Yield_2024.csv')

# # 1.1 Date parsing and feature engineering
# df['sowing_date']   = pd.to_datetime(df['sowing_date'],   format='%Y-%m-%d')
# df['harvest_date']  = pd.to_datetime(df['harvest_date'],  format='%Y-%m-%d')
# df['growing_days']  = (df['harvest_date'] - df['sowing_date']).dt.days

# # 1.2 Select features
# features = [
#     'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
#     'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days'
# ]
# X = df[features]
# y = df['yield_kg_per_hectare']

# # 1.3 Handle missing values
# X = X.fillna(X.median())
# y = y.fillna(y.median())

# # 1.4 Train–test split
# X_train, X_test, y_train, y_test = train_test_split(
#     X, y, test_size=0.2, random_state=42
# )

# # 1.5 Feature scaling
# scaler = StandardScaler()
# X_train = scaler.fit_transform(X_train)
# X_test  = scaler.transform(X_test)

# # 2. Decision Tree: Hyperparameter tuning
# dt = DecisionTreeRegressor(random_state=42)
# param_grid = {
#     'max_depth':        [None, 5, 10, 15],
#     'min_samples_split':[2, 10, 20],
#     'min_samples_leaf': [1, 5, 10]
# }
# grid_dt = GridSearchCV(
#     dt, param_grid, cv=5, scoring='neg_mean_squared_error', n_jobs=1
# )
# grid_dt.fit(X_train, y_train)
# best_dt = grid_dt.best_estimator_

# # 3. Random Forest baseline
# rf = RandomForestRegressor(random_state=42)
# param_rf = {'n_estimators': [10, 10], 'max_depth': [None, 10]}
# grid_rf = GridSearchCV(rf, param_rf, cv=5,
#                        scoring='neg_mean_squared_error', n_jobs=1)
# grid_rf.fit(X_train, y_train)
# best_rf = grid_rf.best_estimator_

# # 4. Cross-validated performance
# scores_dt = cross_val_score(best_dt, X_train, y_train,
#                             cv=5, scoring='r2')
# scores_rf = cross_val_score(best_rf, X_train, y_train,
#                             cv=5, scoring='r2')

# print(f"DT CV R²: {scores_dt.mean():.3f} ± {scores_dt.std():.3f}")
# print(f"RF CV R²: {scores_rf.mean():.3f} ± {scores_rf.std():.3f}")

# # 5. Final evaluation on test set
# for name, model in [('Decision Tree', best_dt), ('Random Forest', best_rf)]:
#     y_pred = model.predict(X_test)
#     mse = mean_squared_error(y_test, y_pred)
#     r2  = r2_score(y_test, y_pred)
#     print(f"{name} Test MSE: {mse:.2f}, R²: {r2:.3f}")

# # 6. Visualizations
# sns.set(style="whitegrid")

# # Create outputs folder if it does not exist
# OUTPUT_DIR = "output_figures"
# os.makedirs(OUTPUT_DIR, exist_ok=True)

# # 6.1 Feature importances (RF)
# fi = pd.Series(best_rf.feature_importances_, index=features).sort_values(ascending=False)
# plt.figure(figsize=(8,5))
# sns.barplot(
#     x=fi.values,
#     y=fi.index,
#     hue=fi.index,
#     palette='magma',
#     legend=False
# )
# plt.title('Random Forest Feature Importances')
# plt.xlabel('Importance')
# plt.tight_layout()
# plt.savefig(os.path.join(OUTPUT_DIR, "feature_importances.png"))
# plt.close()  # Close figure to free memory

# # 6.2 Decision tree structure (text)
# tree_rules = export_text(best_dt, feature_names=features)
# print("\nLearned Decision Tree Rules:\n")
# print(tree_rules)

# # 6.3 Actual vs. Predicted (RF)
# y_pred_rf = best_rf.predict(X_test)
# plt.figure(figsize=(6,6))
# sns.scatterplot(x=y_test, y=y_pred_rf, alpha=0.6)
# plt.plot(
#     [y_test.min(), y_test.max()],
#     [y_test.min(), y_test.max()],
#     'r--'
# )
# plt.xlabel('Actual Yield (kg/ha)')
# plt.ylabel('Predicted Yield (kg/ha)')
# plt.title('Actual vs Predicted Yield (RF)')
# plt.tight_layout()
# plt.savefig(os.path.join(OUTPUT_DIR, "actual_vs_predicted.png"))
# plt.close()

# # 6.4 Residuals distribution (RF)
# res = y_test - y_pred_rf
# plt.figure(figsize=(6,4))
# sns.histplot(res, bins=30, kde=True, color='teal')
# plt.title('Residual Distribution (RF)')
# plt.xlabel('Residual (Actual − Predicted)')
# plt.tight_layout()
# plt.savefig(os.path.join(OUTPUT_DIR, "residuals_distribution.png"))
# plt.close()

# # Open a log file to save all the trees
# with open("tree_rules.log", "w") as f:
#     for i, tree in enumerate(best_rf.estimators_):
#         f.write(f"Tree {i} rules:\n")
#         f.write(export_text(tree, feature_names=features))
#         f.write("\n" + "="*50 + "\n")  # separator between trees

# print("All Random Forest trees exported to tree_rules.log")
import numpy as np
from sklearn.preprocessing import StandardScaler

# -----------------------------------
# Fake "training data" (just to fit scaler)
# -----------------------------------
# 8 features, similar scale to your real problem
X_train = np.array([
    [20, 6.5, 25, 100, 60, 7, 0.70, 100],
    [18, 6.0, 23, 80, 65, 6, 0.65, 95],
    [30, 7.0, 32, 200, 55, 8, 0.80, 120],
    [15, 5.8, 20, 60, 70, 5, 0.60, 90],
    [25, 6.3, 28, 150, 62, 7.5, 0.75, 110],
])

# -----------------------------------
# Fit scaler (this mimics training phase)
# -----------------------------------
scaler = StandardScaler()
scaler.fit(X_train)

# -----------------------------------
# New inputs to test scaling (5 samples)
# -----------------------------------
X_new = np.array([
    [22, 6.4, 27, 120, 63, 7.2, 0.72, 105],
    [17, 5.9, 22, 70, 68, 5.8, 0.63, 92],
    [28, 6.8, 30, 180, 58, 8.2, 0.78, 118],
    [14, 5.6, 19, 50, 72, 4.5, 0.58, 88],
    [26, 6.2, 29, 160, 61, 7.8, 0.74, 112],
])

# -----------------------------------
# Apply scaling (inference phase)
# -----------------------------------
X_new_scaled = scaler.transform(X_new)

# -----------------------------------
# Display results
# -----------------------------------
np.set_printoptions(precision=3, suppress=True)

print("=== Scaler statistics ===")
print("Mean :", scaler.mean_)
print("Std  :", scaler.scale_)

print("\n=== Raw Inputs ===")
print(X_new)

print("\n=== Scaled Inputs ===")
print(X_new_scaled)
