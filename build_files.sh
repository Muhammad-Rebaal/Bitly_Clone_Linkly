#!/bin/bash

# Echo message indicating the start of the build process
echo "BUILD START"

# Activate virtual environment
source C:/Users/ICS/Desktop/Bitly_Clone_Linkly/env/Scripts/activate

# Install dependencies from requirements.txt
python -m pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput --clear

# Echo message indicating the end of the build process
echo "BUILD END"
