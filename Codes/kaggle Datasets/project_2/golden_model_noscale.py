import pandas as pd
import os
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import r2_score, mean_absolute_error, mean_squared_error
import numpy as np

# -------------------------
# Step 1: Data cleaning + Golden Model prediction
# -------------------------
def clean_data(input_csv='datasets/farm_data_encoded.csv',
               output_csv='datasets/clean_dataset.csv',
               save_with_predictions=True):

    df = pd.read_csv(input_csv)

    # Convert dates and compute growing days
    df['sowing_date'] = pd.to_datetime(df['sowing_date'], format='%Y-%m-%d')
    df['harvest_date'] = pd.to_datetime(df['harvest_date'], format='%Y-%m-%d')
    df['growing_days'] = (df['harvest_date'] - df['sowing_date']).dt.days

    # Features (RAW — no scaling)
    features = [
        'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
        'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days',
        'crop_type'
    ]

    df_clean = df[features + ['yield_kg_per_hectare',
                              'sowing_date',
                              'harvest_date']]

    df_clean = df_clean.fillna(df_clean.median())

    # -------------------------
    # Manual Golden Tree (NEW RAW TREE)
    # -------------------------
    def predict_tree_raw(row):

        sm   = row['soil_moisture_%']
        ph   = row['soil_pH']
        temp = row['temperature_C']
        hum  = row['humidity_%']
        sun  = row['sunlight_hours']
        ndvi = row['NDVI_index']
        gd   = row['growing_days']
        crop = row['crop_type']

        # -------------------------
        # Decision Tree Logic (from export_text)
        # -------------------------

        if hum <= 76.42:

            if sm <= 35.31:

                if ph <= 6.13:

                    if gd <= 127.97:
                        return 4012.16
                    else:
                        return 3824.74

                else:  # ph > 6.13

                    if gd <= 125.53:

                        if temp <= 23.92:
                            return 4266.83
                        else:
                            if ph <= 7.15:
                                return 3802.41
                            else:
                                return 4376.08

                    else:  # gd > 125.53

                        if sm <= 21.52:
                            return 4476.56
                        else:
                            return 4074.15

            else:  # sm > 35.31

                if temp <= 26.21:
                    return 4004.49
                else:
                    return 3359.99

        else:  # hum > 76.42

            if ndvi <= 0.59:

                if sun <= 7.61:
                    return 4160.91
                else:
                    return 3504.10

            else:  # ndvi > 0.59

                if crop <= 2.76:
                    return 4718.38
                else:
                    return 4168.09

    # Apply Golden Model
    df_clean['predicted_yield_golden_model'] = df_clean.apply(
        predict_tree_raw, axis=1
    )

    # Save CSV
    if save_with_predictions:
        output_csv_with_pred = output_csv.replace(
            '.csv', '_with_predictions.csv'
        )
        df_clean.to_csv(output_csv_with_pred, index=False)
        print(f"Clean dataset with predictions saved to {output_csv_with_pred}")
    else:
        df_clean.to_csv(output_csv, index=False)
        print(f"Clean dataset saved to {output_csv}")

    return df_clean


# -------------------------
# Run Golden Model
# -------------------------
df_clean_with_predictions = clean_data()


# -------------------------
# Visualization
# -------------------------
OUTPUT_DIR = "output_figures"
os.makedirs(OUTPUT_DIR, exist_ok=True)

# Predicted vs Actual
plt.figure(figsize=(6, 6))
sns.scatterplot(
    x=df_clean_with_predictions['yield_kg_per_hectare'],
    y=df_clean_with_predictions['predicted_yield_golden_model'],
    alpha=0.6,
    color='orange'
)

plt.plot(
    [df_clean_with_predictions['yield_kg_per_hectare'].min(),
     df_clean_with_predictions['yield_kg_per_hectare'].max()],
    [df_clean_with_predictions['yield_kg_per_hectare'].min(),
     df_clean_with_predictions['yield_kg_per_hectare'].max()],
    'r--'
)

plt.xlabel('Actual Yield (kg/ha)')
plt.ylabel('Predicted Yield (kg/ha)')
plt.title('Golden Model: Actual vs Predicted Yield')
plt.tight_layout()
plt.savefig(os.path.join(
    OUTPUT_DIR,
    "golden_model_actual_vs_predicted.png"
))
plt.close()

# Residual distribution
residuals = (
    df_clean_with_predictions['yield_kg_per_hectare']
    - df_clean_with_predictions['predicted_yield_golden_model']
)

plt.figure(figsize=(6, 4))
sns.histplot(residuals, bins=30, kde=True, color='teal')
plt.title('Golden Model Residuals Distribution')
plt.xlabel('Residual (Actual − Predicted)')
plt.tight_layout()
plt.savefig(os.path.join(
    OUTPUT_DIR,
    "golden_model_residuals_distribution.png"
))
plt.close()

print(f"Golden model visualizations saved in {OUTPUT_DIR}")

# Actual and predicted values
y_true = df_clean_with_predictions['yield_kg_per_hectare']
y_pred = df_clean_with_predictions['predicted_yield_golden_model']

# Define tolerance (e.g., within 10% of actual yield)
tolerance = 0.25  # 10%

# Boolean array: True if prediction is within tolerance
correct_predictions = np.abs(y_true - y_pred) / y_true <= tolerance

# Calculate “accuracy” as percentage
accuracy_percent = 100 * correct_predictions.mean()
print(f"Predictions within ±{tolerance*100:.0f}% of actual yield: {accuracy_percent:.2f}%")