# Makefile for greenhouse and smart farming analysis
# This Makefile supports TWO different Python scripts
#
# Usage:
#   make              -> setup env and run dataset_analysis.py
#   make run           -> run dataset_analysis.py
#   make run-ml        -> run smart farming ML code
#   make clean         -> remove virtual environment and logs

# Name of the Python virtual environment
ENV_NAME = venv

# Existing script (do not change)
SCRIPT_ANALYSIS = dataset_analysis.py

# New ML script (your smart farming model code)
SCRIPT_ML = main.py

# Default target: keep old behavior
all: env run

# Create virtual environment and install all dependencies
# Create virtual environment and install dependencies
env:
	python -m venv $(ENV_NAME)
	$(ENV_NAME)/Scripts/python -m pip install --upgrade pip
	$(ENV_NAME)/Scripts/pip install pandas numpy matplotlib seaborn scikit-learn kaggle tabulate


# Run the original dataset analysis (unchanged behavior)
run-data:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ANALYSIS)

# Run the smart farming ML code
run:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ML)

# Clean virtual environment and logs
clean:
	rm -rf $(ENV_NAME)
	rm -f output.log

.PHONY: all env run run-ml clean