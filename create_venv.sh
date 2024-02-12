#!/bin/bash

/bin/bash -ol pipefail -c "python -m venv --copies /opt/venv && . /opt/venv/bin/activate && pip install -r requirements.txt"