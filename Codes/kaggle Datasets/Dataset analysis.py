# Phase 1: Find the Dataset (Done)
# Phase 2: Set up your Python & ML environment 
# Phase 3: Build a Machine Learning Model
# Phase 4: Prepare for FPGA implementation
# About Dataset reference (https://www.kaggle.com/datasets/adilshamim8/greenhouse-plant-growth-metrics)
# The Advanced IoT Agriculture Dataset captures detailed physiological and morphological
# measurements of plants grown under two greenhouse settings (IoT‑enabled vs. traditional)
# at Tikrit University’s Agriculture Lab. Compiled by Mohammed Ismail Lifta (2023–2024)
#  under the supervision of Prof. Wisam Dawood Abdullah, it comprises 30,000 records spanning 14 variables that quantify 
# chlorophyll levels, growth rates, biomass (wet/dry weight), root metrics, and more, alongside a final categorical Class label.

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
download_path = os.path.join(os.path.dirname(__file__), "datasets")
os.makedirs(download_path, exist_ok=True)
dataset_name = "adilshamim8/greenhouse-plant-growth-metrics"

# Check if dataset already downloaded
csv_files = [f for f in os.listdir(download_path) if f.endswith(".csv")]
if csv_files:
    csv_file_path = os.path.join(download_path, csv_files[0])
else:
    api.dataset_download_files(dataset_name, path=download_path, unzip=True)
    csv_files = [f for f in os.listdir(download_path) if f.endswith(".csv")]
    if not csv_files:
        raise FileNotFoundError("No CSV file found in the dataset folder.")
    csv_file_path = os.path.join(download_path, csv_files[0])

# -------------------------
# Step 3: Load dataset
# -------------------------
df = pd.read_csv(csv_file_path)

# -------------------------
# Step 4: Open log file
# -------------------------
log_file = os.path.join(os.path.dirname(__file__), "output.log")
with open(log_file, "w", encoding="utf-8") as log:

    # Header
    log.write("=== Greenhouse Plant Growth Metrics Analysis ===\n\n")
    log.write(f"Loaded CSV file: {csv_files[0]}\n\n")

    # Print 5 random rows
    log.write("---- 5 Random Rows of Dataset ----\n")
    log.write(tabulate(df.sample(5, random_state=42), headers='keys', tablefmt='fancy_grid', showindex=False))
    log.write("\n\n")

    # Column description table
    column_info = pd.DataFrame({
        "Column": ["Random", "ACHP", "PHR", "AWWGV", "ALAP", "ANPL", "ARD", "ADWR",
                   "PDMVG", "ARL", "AWWR", "ADWV", "PDMRG", "Class"],
        "Meaning": [
            "Identifier representing different plant sample batches (e.g., R1, R2, R3).",
            "Average chlorophyll content per plant, an indicator of photosynthetic activity.",
            "Plant height rate – measures the vertical growth over time.",
            "Average wet weight of vegetative growth – total fresh weight of the above-ground parts.",
            "Average leaf area per plant – surface area of leaves which impacts photosynthesis.",
            "Average number of leaves per plant – indicates plant maturity and foliage density.",
            "Average root diameter – thickness of roots, relevant to nutrient uptake.",
            "Average dry weight of roots – total root biomass after drying.",
            "Percentage of dry matter in vegetative growth – measures solid content in shoots.",
            "Average root length – indicates root development and depth.",
            "Average wet weight of roots – total fresh root weight.",
            "Average dry weight of vegetative parts – dried mass of above-ground plant parts.",
            "Percentage of dry matter in root growth – solid content of the root system.",
            "Categorical label indicating the experimental group: SA, SB, SC (Traditional Greenhouse), TA, TB, TC (IoT-based Greenhouse)."
        ],
        "Notes on High/Low": [
            "Not numerical; just indicates which repeat the data came from (R1, R2, R3, etc.)",
            "High → more chlorophyll, Low → less",
            "High → faster growth, Low → slower growth",
            "High → heavier wet plant, Low → lighter",
            "High → larger leaf area, Low → smaller",
            "High → more leaves, Low → fewer",
            "High → thicker roots, Low → thinner",
            "High → heavier roots, Low → lighter",
            "High → higher dry matter %, Low → lower",
            "High → longer roots, Low → shorter",
            "High → heavier roots, Low → lighter",
            "High → heavier dry biomass, Low → lighter",
            "High → higher dry matter %, Low → lower",
            "Categorical variable"
        ],
        "Typical Range": [
            "N/A", "~33–36", "~45–67", "~1.1–1.36", "~981–1284", "~4–5", "~15–17",
            "~0.7–1.7", "~0.2–2.9", "~18–31", "~19–20", "~0.2–0.4", "~27–57", "N/A"
        ]
    })

    log.write("---- Column Description Table ----\n")
    log.write(tabulate(column_info, headers='keys', tablefmt='fancy_grid', showindex=False))
    log.write("\n\n")

    # Numeric column summary
    numeric_cols = df.select_dtypes(include='number').columns
    summary_table = []

    for col in numeric_cols:
        summary_table.append([
            col,
            f"{df[col].min():.3f}",
            f"{df[col].mean():.3f}",
            f"{df[col].max():.3f}"
        ])

    summary_df = pd.DataFrame(summary_table, columns=["Column", "Min (Low)", "Mean (Average)", "Max (High)"])
    log.write("---- Numeric Columns Summary ----\n")
    log.write(tabulate(summary_df, headers='keys', tablefmt='fancy_grid', showindex=False))
    log.write("\n")

print(f"Analysis complete. Output written to: {log_file}")