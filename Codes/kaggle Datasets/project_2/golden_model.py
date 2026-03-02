import pandas as pd
from sklearn.preprocessing import StandardScaler
import os
import matplotlib.pyplot as plt
import seaborn as sns

# -------------------------
# Step 1: Data cleaning function
# -------------------------
def clean_data(input_csv='datasets/farm_data_encoded.csv',
               output_csv='datasets/clean_dataset.csv',
               save_with_predictions=True):
    df = pd.read_csv(input_csv)

    # Convert dates and compute growing days
    df['sowing_date'] = pd.to_datetime(df['sowing_date'], format='%Y-%m-%d')
    df['harvest_date'] = pd.to_datetime(df['harvest_date'], format='%Y-%m-%d')
    df['growing_days'] = (df['harvest_date'] - df['sowing_date']).dt.days

    # Select features of interest + yield
    features = [
        'soil_moisture_%', 'soil_pH', 'temperature_C', 'rainfall_mm',
        'humidity_%', 'sunlight_hours', 'NDVI_index', 'growing_days'
    ]
    df_clean = df[features + ['yield_kg_per_hectare', 'sowing_date', 'harvest_date', 'crop_type']]

    # # Fill missing values
    # df_clean = df_clean.fillna(df_clean.median())

    # -------------------------
    # Step 2: Scale and predict
    # -------------------------
    X = df_clean[features]
    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(X)

    # Debug: print the first 5 rows of raw features
    print("Raw feature values (first 5 rows):")
    print(X.head())

    # -------------------------
    # Manual prediction function (NEW TREE)
    # crop_type is NOT scaled
    # -------------------------
    def predict_tree_scaled(row_scaled, crop_type, debug=False):
        sm, ph, temp, rain, hum, sun, ndvi, gd = row_scaled

        if debug:
            print(
                f"Scaled -> soil_moisture: {sm:.2f}, soil_pH: {ph:.2f}, "
                f"temperature: {temp:.2f}, rainfall: {rain:.2f}, "
                f"humidity: {hum:.2f}, sunlight: {sun:.2f}, "
                f"NDVI: {ndvi:.2f}, growing_days: {gd:.2f}, "
                f"crop_type (raw): {crop_type}"
            )

        # -------------------------
        # Decision Tree Logic
        # -------------------------
        if gd <= -1.06:
            if crop_type <= 3.91:
                return 3877.71
            else:
                return 3889.49

        else:  # growing_days > -1.06
            if crop_type <= 3.81:
                if ph <= 1.24:
                    if ndvi <= 0.32:
                        if ph <= -0.48:
                            return 4161.82
                        else:
                            return 4142.28
                    else:  # NDVI_index > 0.32
                        if sm <= -0.08:
                            return 4136.84
                        else:
                            return 4010.21
                else:  # soil_pH > 1.24
                    return 4399.57

            else:  # crop_type > 3.81
                if ndvi <= -1.25:
                    return 3646.80
                else:
                    if sun <= -0.08:
                        return 4001.40
                    else:
                        if gd <= -0.10:
                            return 4203.40
                        else:
                            return 3804.23

    # Predict for all rows with debug for first 5
    predictions = [
        predict_tree_scaled(
            row_scaled=row,
            crop_type=df_clean.loc[i, 'crop_type'],
            debug=(i < 5)
        )
        for i, row in enumerate(X_scaled)
    ]

    df_clean['predicted_yield_golden_model'] = predictions

    # Save CSV
    if save_with_predictions:
        output_csv_with_pred = output_csv.replace('.csv', '_with_predictions.csv')
        df_clean.to_csv(output_csv_with_pred, index=False)
        print(f"Clean dataset with predictions saved to {output_csv_with_pred}")
    else:
        df_clean.to_csv(output_csv, index=False)
        print(f"Clean dataset saved to {output_csv}")

    return df_clean


# -------------------------
# Run cleaning and prediction
# -------------------------
df_clean_with_predictions = clean_data()


# -------------------------
# 8. Visualization of Golden Model Predictions
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
plt.savefig(os.path.join(OUTPUT_DIR, "golden_model_actual_vs_predicted.png"))
plt.close()

# Residuals distribution
residuals = (
    df_clean_with_predictions['yield_kg_per_hectare']
    - df_clean_with_predictions['predicted_yield_golden_model']
)
plt.figure(figsize=(6, 4))
sns.histplot(residuals, bins=30, kde=True, color='teal')
plt.title('Golden Model Residuals Distribution')
plt.xlabel('Residual (Actual − Predicted)')
plt.tight_layout()
plt.savefig(os.path.join(OUTPUT_DIR, "golden_model_residuals_distribution.png"))
plt.close()

print(f"Golden model visualizations saved in {OUTPUT_DIR}")