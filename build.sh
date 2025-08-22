#!/usr/bin/env bash
# exit on error
set -o errexit

# Install the CPU-only version of PyTorch first
pip install torch --index-url https://download.pytorch.org/whl/cpu

# Install the rest of the dependencies
pip install -r requirements.txt