# Smart Farming System for Yield Prediction  

This project implements a **crop yield prediction system** with a focus on **machine learning, digital IC design and verification**. The system uses historical sensor and environmental data to forecast crop yield. While machine learning models (Decision Tree and Random Forest) were initially developed for algorithmic reference, the primary goal is to implement these models efficiently in hardware using FPGA.

---

## Project Status

**Status:** Ongoing  
**Final Goal:** Deploy crop yield prediction models on **FPGA** using **Verilog**, and verify functionality using a **SystemVerilog UVM environment** for digital design verification.  

---

## Table of Contents

1. [Problem Statement & Objective](#problem-statement--objective)  
2. [Dataset Overview](#dataset-overview)  
3. [Digital Design Approach](#digital-design-approach)  
4. [Verification Strategy](#verification-strategy)  
5. [Authors & References](#authors--references)  

---

## Problem Statement & Objective

Predicting crop yield is important for:

- Planning harvests and resource allocation.  
- Reducing guesswork in agriculture.  
- Providing real-time analytics with hardware acceleration.  

**Objective:** Implement an FPGA-based digital system for crop yield prediction and verify its correctness using standard digital design methodologies.  

---

## Dataset Overview

**Dataset:** [Smart Farming Sensor Data for Yield Prediction](https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction/data)  

The dataset simulates real-world smart farming operations using IoT sensors and satellite data. It includes environmental and operational variables affecting crop yield across **500 farms** in regions like India, the USA, and Africa.

**Applications:**  

- FPGA implementation of prediction algorithms  
- Digital IC design practice  
- Real-time agricultural decision support systems  

### Key Columns

| Column Name | Description |
|-------------|-------------|
| `soil_moisture_%` | Soil moisture content (%) |
| `soil_pH` | Soil pH level |
| `temperature_C` | Average temperature during crop cycle (°C) |
| `rainfall_mm` | Total rainfall in mm |
| `humidity_%` | Average humidity (%) |
| `sunlight_hours` | Average daily sunlight hours |
| `yield_kg_per_hectare` | Target variable: crop yield (kg/ha) |
| `NDVI_index` | Normalized Difference Vegetation Index |

*(Other columns exist but the FPGA implementation will focus on key numerical features for simplicity.)*

---

## Digital Design Approach

- Translate the ML models (Decision Tree, Random Forest) into **Verilog modules** for FPGA deployment.  
- Each tree or decision path is represented using combinational and sequential logic.  
- Optimize resource usage for real-time execution on FPGA.  
- Use **parameterized modules** to allow flexibility for tree depth, number of trees, and feature selection.  

---

## Verification Strategy

![Verification Strategy Image](https://github.com/user-attachments/assets/f903a030-1ab2-46d5-91e8-7e682af902c2)

- Develop a **SystemVerilog UVM testbench** to verify functional correctness of the FPGA implementation.  
- Apply **randomized and directed test vectors** covering possible input ranges.  
- Verify that predicted yield values match software-based ML results within acceptable tolerance.  
- Ensure coverage of all decision paths and logic branches in the hardware design.  

---

## Authors & References

**Authors:**  
- Ali Adel | ali.adel@email.com  
- Hazem Alaa | [GitHub](https://github.com/H-Electro)  

**Advisor:** Dr. Heba Draz | hdraz@aucegypt.edu  
**Course:** Hardware/Software Co-Design, ECIP Internship Program  
**Institute:** [Electronics Research Institute](https://eri.sci.eg)  

**References:**  

1. [Random Forest Overview](https://en.wikipedia.org/wiki/Random_forest)  
2. [Decision Tree Example](https://www.displayr.com/what-is-a-decision-tree/)  
3. [Kaggle Dataset](https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction/data)  
4. [SystemVerilog UVM Guide](https://www.accellera.org/downloads/standards/uvm)  
5. [FPGA Design Principles](https://www.xilinx.com/products/design-tools.html)  