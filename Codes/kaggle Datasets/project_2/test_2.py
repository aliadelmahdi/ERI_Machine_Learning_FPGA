import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.tree import DecisionTreeRegressor, export_text

# -------------------------
# 1. Load data and preprocess
# -------------------------
df = pd.read_csv('datasets/Smart_Farming_Crop_Yield_2024.csv')

# Feature engineering
df['sowing_date']   = pd.to_datetime(df['sowing_date'], format='%Y-%m-%d')
df['harvest_date']  = pd.to_datetime(df['harvest_date'], format='%Y-%m-%d')
df['growing_days']  = (df['harvest_date'] - df['sowing_date']).dt.days

features = [
    'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
    'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days'
]

X = df[features]
y = df['yield_kg_per_hectare']

# Fill missing values
X = X.fillna(X.median())
y = y.fillna(y.median())

# -------------------------
# 2. Scale features
# -------------------------
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

# -------------------------
# 3. Train decision tree
# -------------------------
dt = DecisionTreeRegressor(random_state=42)
dt.fit(X_scaled, y)

# -------------------------
# 4. Manual prediction function (scaled thresholds)
# -------------------------
def predict_tree_scaled(row_scaled):
    sm, ph, temp, rain, hum, sun, ndvi, gd = row_scaled

    if sm <= -0.032:
        if sun <= -0.811:
            if sm <= -0.061:
                if temp <= 0.291:
                    if rain <= 1.291:
                        return 4031.19
                    else:
                        return 4167.47
                else:
                    return 4023.42
            else:
                return 4200.64
        else:
            if ph <= -1.682:
                return 3938.08
            else:
                if rain <= -0.984:
                    if temp <= -1.218:
                        return 3898.45
                    else:
                        return 4629.53
                else:
                    if ndvi <= 0.894:
                        return 4229.81
                    else:
                        return 4313.71
    else:
        if ndvi <= -1.286:
            return 3940.94
        else:
            if rain <= 1.291:
                if sm <= 0.594:
                    return 3715.58
                else:
                    if temp <= 0.901:
                        return 3792.80
                    else:
                        return 3212.61
            else:
                return 4262.58

# -------------------------
# 5. Predict first 7 rows manually
# -------------------------
first7_scaled = X_scaled[:7]
y_pred_manual = [predict_tree_scaled(row) for row in first7_scaled]
y_actual_first7 = y.iloc[:7].values

# -------------------------
# 6. Save to log file
# -------------------------
LOG_FILE_FIRST7 = "logs/first7_predictions_model.log"
with open(LOG_FILE_FIRST7, "w") as f:
    f.write("Prediction for First 7 Rows (Decision Tree Logic)\n")
    f.write("="*60 + "\n")
    f.write(f"{'Row':<5}{'Actual Yield':<20}{'Predicted Yield':<20}\n")
    f.write("-"*60 + "\n")
    for i, (actual, pred) in enumerate(zip(y_actual_first7, y_pred_manual), start=1):
        f.write(f"{i:<5}{actual:<20.2f}{pred:<20.2f}\n")
    f.write("="*60 + "\n")

print(f"First 7 rows actual vs predicted values exported to {LOG_FILE_FIRST7}")