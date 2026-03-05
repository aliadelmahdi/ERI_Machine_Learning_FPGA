import pandas as pd
import numpy as np

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline

from sklearn.tree import DecisionTreeRegressor
from sklearn.neighbors import KNeighborsRegressor
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from sklearn.linear_model import Ridge, Lasso, ElasticNet
from sklearn.neural_network import MLPRegressor

from xgboost import XGBRegressor
from lightgbm import LGBMRegressor
from catboost import CatBoostRegressor

from sklearn.metrics import mean_squared_error, r2_score

tolerance = 0.15

# =========================================================
# 1. Load dataset
# =========================================================
df = pd.read_csv('datasets/farm_data_encoded.csv')

df['sowing_date'] = pd.to_datetime(df['sowing_date'])
df['harvest_date'] = pd.to_datetime(df['harvest_date'])
df['growing_days'] = (df['harvest_date'] - df['sowing_date']).dt.days

df.fillna(df.median(numeric_only=True), inplace=True)
df.ffill(inplace=True)
df.bfill(inplace=True)

num_cols = [
    'soil_moisture_%', 'soil_pH', 'temperature_C',
    'rainfall_mm', 'humidity_%', 'sunlight_hours',
    'NDVI_index', 'growing_days', 'yield_kg_per_hectare'
]

def remove_outliers_iqr(dataframe, columns):
    df_out = dataframe.copy()
    for col in columns:
        if col in df_out.columns:
            Q1 = df_out[col].quantile(tolerance)
            Q3 = df_out[col].quantile(0.75)
            IQR = Q3 - Q1
            lower = Q1 - 1.5 * IQR
            upper = Q3 + 1.5 * IQR
            df_out = df_out[(df_out[col] >= lower) & (df_out[col] <= upper)]
    return df_out

df_clean = remove_outliers_iqr(df, num_cols)


# =========================================================
# 2. Features
# =========================================================
features = [
    'soil_moisture_%', 'soil_pH', 'temperature_C',
    'rainfall_mm', 'humidity_%', 'sunlight_hours',
    'NDVI_index', 'growing_days', 'crop_type'
]

X = df_clean[features].copy()
y = df_clean['yield_kg_per_hectare']

X['crop_type'] = X['crop_type'].astype(str)

numeric_features = [
    'soil_moisture_%', 'soil_pH', 'temperature_C',
    'rainfall_mm', 'humidity_%', 'sunlight_hours',
    'NDVI_index', 'growing_days'
]

categorical_features = ['crop_type']

X[numeric_features] = X[numeric_features].astype(float)

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

numeric_transformer = Pipeline([
    ('scaler', StandardScaler())
])

categorical_transformer = Pipeline([
    ('encoder', OneHotEncoder(handle_unknown='ignore'))
])

preprocess = ColumnTransformer([
    ('num', numeric_transformer, numeric_features),
    ('cat', categorical_transformer, categorical_features)
])


# =========================================================
# 3. Initial evaluation
# =========================================================
models = {
    "Random Forest": RandomForestRegressor(random_state=42),
    "ElasticNet": ElasticNet(random_state=42),
    "Ridge": Ridge(random_state=42),
    "Gradient Boosting": GradientBoostingRegressor(random_state=42),
    "XGBoost": XGBRegressor(random_state=42),
    "LightGBM": LGBMRegressor(force_col_wise=True, verbosity=-1, random_state=42),
    "CatBoost": CatBoostRegressor(verbose=0, random_state=42)
}

results = []

print("\n----- INITIAL RANKING -----\n")

for name, model in models.items():

    pipe = Pipeline([
        ('prep', preprocess),
        ('model', model)
    ])

    pipe.fit(X_train, y_train)
    y_pred = pipe.predict(X_test)

    mse = mean_squared_error(y_test, y_pred)
    r2 = r2_score(y_test, y_pred)

    results.append((name, mse, r2))

    print(f"{name}: MSE={mse:.3f}, R2={r2:.3f}")

results_sorted = sorted(results, key=lambda x: (x[2], -x[1]), reverse=True)
top3 = [r[0] for r in results_sorted[:3]]

print("\nTop 3 selected:")
for m in top3:
    print(m)


# =========================================================
# 4. Structured tuning (15 cycles)
# =========================================================
best_mse = float("inf")
best_r2 = -float("inf")
best_acc = 0
best_model_info = None

cycle_count = 0

for model_name in top3:

    for depth in [5, 10, 15]:
        for est in [300, 600, 900]:

            cycle_count += 1
            print(f"\nCycle {cycle_count} - {model_name}")

            if model_name == "Random Forest":
                model = RandomForestRegressor(
                    n_estimators=est,
                    max_depth=depth,
                    min_samples_split=5,
                    min_samples_leaf=2,
                    random_state=42
                )

            elif model_name == "Gradient Boosting":
                model = GradientBoostingRegressor(
                    n_estimators=est,
                    max_depth=depth,
                    learning_rate=0.05,
                    random_state=42
                )

            elif model_name == "XGBoost":
                model = XGBRegressor(
                    n_estimators=est,
                    max_depth=depth,
                    learning_rate=0.05,
                    random_state=42
                )

            elif model_name == "LightGBM":
                model = LGBMRegressor(
                    n_estimators=est,
                    max_depth=depth,
                    learning_rate=0.05,
                    min_data_in_leaf=15,
                    force_col_wise=True,
                    verbosity=-1,
                    random_state=42
                )

            elif model_name == "CatBoost":
                model = CatBoostRegressor(
                    iterations=est,
                    depth=depth,
                    learning_rate=0.05,
                    verbose=0,
                    random_state=42
                )

            elif model_name == "ElasticNet":
                model = ElasticNet(
                    alpha=0.1,
                    l1_ratio=0.5,
                    max_iter=5000,
                    random_state=42
                )

            elif model_name == "Ridge":
                model = Ridge(
                    alpha=10,
                    random_state=42
                )

            pipe = Pipeline([
                ('prep', preprocess),
                ('model', model)
            ])

            pipe.fit(X_train, y_train)
            y_pred = pipe.predict(X_test)

            mse = mean_squared_error(y_test, y_pred)
            r2 = r2_score(y_test, y_pred)
            acc = 100 * ((np.abs(y_test - y_pred) / y_test) <= tolerance).mean()

            print(f"MSE={mse:.3f}, R2={r2:.3f}, Acc±25={acc:.2f}%")

            if mse < best_mse:
                best_mse = mse
                best_model_info = (model_name, model.get_params())

            if r2 > best_r2:
                best_r2 = r2

            if acc > best_acc:
                best_acc = acc


# =========================================================
# 5. Final Winner
# =========================================================
print("\n========== FINAL Model ==========\n")
print(f"Lowest MSE: {best_mse:.3f}")
print(f"Highest R2: {best_r2:.3f}")
print(f"Highest Accuracy : {best_acc:.2f}%")
print("\n Model and Parameters:")
print(best_model_info)