#!/bin/bash

# Echo message indicating the start of the build process
echo "BUILD START"

# Activate virtual environment
source /path/to/your/venv/bin/activate

# Install dependencies from requirements.txt
python3 -m pip install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput --clear

# Echo message indicating the end of the build process
echo "BUILD END"
