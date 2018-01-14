#!/bin/bash
# redis-server |
# mongod

source activate py2
pip install -r requirements.txt

cd news_pipeline
python news_monitor.py &&
python news_fetcher.py &&
python news_deduper.py

# echo "=================================================="
# read -p "PRESS [ENTER] TO TERMINATE PROCESSES." PRESSKEY

# kill $(jobs -p)