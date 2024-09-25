#!/bin/bash

# Prompt user to enter the project directory name
read -p "Enter the project directory name: " PROJ_DIR

# Create and navigate to the project directory
mkdir -p "$PROJ_DIR"
cd "$PROJ_DIR" || { echo "Failed to change directory! Exiting."; exit 1; }

# Clone the required repositories
git clone -b release-2021.1 https://github.com/Xilinx/kv260-vitis
git clone -b release-2021.1 https://github.com/Xilinx/kv260-firmware
git clone -b v1.4 https://github.com/Xilinx/Vitis-AI
git clone -b VVAS_REL_v1.0 https://github.com/Xilinx/VVAS

echo "Repositories cloned successfully into $PROJ_DIR."

