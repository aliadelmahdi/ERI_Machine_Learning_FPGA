# Phase 1: Find the Dataset (Done)
# Phase 2: Set up Python & ML environment 
# Phase 3: Build a Machine Learning Model
# Phase 4: Prepare for FPGA implementation

# About Dataset reference (https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction)
# This dataset simulates real-world smart farming operations powered by
# IoT sensors and satellite data. It captures environmental and
# operational variables that influence crop yield across 500 farms
# located in regions such as India, the USA, and Africa.
#
# Designed to reflect modern agritech systems, the dataset is well
# suited for advanced analytical tasks including:
#
# - Predictive modeling using machine learning and AI techniques
# - Time-series analysis of sensor and environmental data
# - Sensor-based optimization of farming practices
# - Environmental and geospatial data visualizations
# - Crop health monitoring and analytics

import os
import pandas as pd
from kaggle.api.kaggle_api_extended import KaggleApi
from tabulate import tabulate

# -------------------------
# Step 1: Setup Kaggle API
# -------------------------
os.environ['KAGGLE_CONFIG_DIR'] = r"C:\Users\Ali\kaggle"
api = KaggleApi()
api.authenticate()

# -------------------------
# Step 2: Dataset folder
# -------------------------
BASE_DIR = os.path.dirname(__file__)
download_path = os.path.join(BASE_DIR, "datasets")
os.makedirs(download_path, exist_ok=True)

dataset_name = "atharvasoundankar/smart-farming-sensor-data-for-yield-prediction"

# Check if dataset already downloaded
csv_files = [f for f in os.listdir(download_path) if f.endswith(".csv")]

if not csv_files:
    api.dataset_download_files(dataset_name, path=download_path, unzip=True)
    csv_files = [f for f in os.listdir(download_path) if f.endswith(".csv")]
    if not csv_files:
        raise FileNotFoundError("No CSV file found in dataset folder.")

csv_file_path = os.path.join(download_path, csv_files[0])

# -------------------------
# Step 3: Load dataset
# -------------------------
df = pd.read_csv(csv_file_path)

# -------------------------
# Step 4: Open log file
# -------------------------
log_file = os.path.join(BASE_DIR, "output.log")

with open(log_file, "w", encoding="utf-8") as log:

    log.write("=== Smart Farming Sensor Data Analysis ===\n\n")
    log.write(f"Loaded CSV file: {csv_files[0]}\n\n")

    # -------------------------
    # 5 Random Rows
    # -------------------------
    log.write("---- 5 Random Rows of Dataset ----\n")
    log.write(tabulate(
        df.sample(5, random_state=42),
        headers="keys",
        tablefmt="fancy_grid",
        showindex=False
    ))
    log.write("\n\n")

    # -------------------------
    # Column Description Table
    # -------------------------
    column_info = pd.DataFrame({
        "Column": [
            "farm_id", "region", "crop_type",
            "soil_moisture_%", "soil_pH", "temperature_C",
            "rainfall_mm", "humidity_%", "sunlight_hours",
            "irrigation_type", "fertilizer_type",
            "pesticide_usage_ml", "sowing_date", "harvest_date",
            "total_days", "yield_kg_per_hectare",
            "sensor_id", "timestamp",
            "latitude", "longitude",
            "NDVI_index", "crop_disease_status"
        ],
        "Meaning": [
            "Unique identifier for each smart farm.",
            "Geographical region where the farm is located.",
            "Type of crop cultivated on the farm.",
            "Soil moisture content measured in percentage.",
            "Soil acidity or alkalinity level.",
            "Average temperature during crop growth cycle.",
            "Total rainfall received during the season in millimeters.",
            "Average atmospheric humidity percentage.",
            "Average daily sunlight exposure in hours.",
            "Method of irrigation used on the farm.",
            "Type of fertilizer applied to crops.",
            "Daily pesticide usage in milliliters.",
            "Date when the crop was sown.",
            "Date when the crop was harvested.",
            "Total crop growth duration in days.",
            "Crop yield per hectare (target variable).",
            "Identifier of the IoT sensor collecting data.",
            "Timestamp of the sensor data snapshot.",
            "Latitude coordinate of the farm.",
            "Longitude coordinate of the farm.",
            "Vegetation health index (NDVI).",
            "Observed crop disease severity level."
        ],
        "Notes on High / Low": [
            "Identifier only.",
            "Regional label.",
            "Crop category.",
            "High indicates wetter soil; low indicates dry soil.",
            "High indicates alkaline; low indicates acidic.",
            "High indicates hotter climate; low indicates cooler.",
            "High indicates heavy rainfall; low indicates drought risk.",
            "High indicates humid air; low indicates dry air.",
            "High indicates more sunlight; low indicates less.",
            "Operational choice.",
            "Operational choice.",
            "High indicates heavy pesticide use; low indicates minimal.",
            "Date field.",
            "Date field.",
            "High indicates longer crop cycle; low indicates shorter.",
            "High indicates better yield; low indicates poor yield.",
            "Sensor identifier.",
            "Time reference.",
            "Geographic coordinate.",
            "Geographic coordinate.",
            "High indicates healthy vegetation; low indicates crop stress.",
            "None indicates healthy crops; severe indicates disease."
        ]
    })

    log.write("---- Column Description Table ----\n")
    log.write(tabulate(
        column_info,
        headers="keys",
        tablefmt="fancy_grid",
        showindex=False
    ))
    log.write("\n\n")

    # -------------------------
    # Numeric Column Summary
    # -------------------------
    numeric_cols = df.select_dtypes(include="number").columns

    summary_rows = []
    for col in numeric_cols:
        summary_rows.append([
            col,
            f"{df[col].min():.3f}",
            f"{df[col].mean():.3f}",
            f"{df[col].max():.3f}"
        ])

    summary_df = pd.DataFrame(
        summary_rows,
        columns=["Column", "Min (Low)", "Mean (Average)", "Max (High)"]
    )

    log.write("---- Numeric Columns Summary ----\n")
    log.write(tabulate(
        summary_df,
        headers="keys",
        tablefmt="fancy_grid",
        showindex=False
    ))
    log.write("\n")

print(f"Analysis complete. Output written to: {log_file}")