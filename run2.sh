#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

fswebcam -q -r 1280x720 --no-banner /opt/demo/images/$DATE.jpg
#/opt/demo/images/$DATE.jpg
#all.py
#python3 -W ignore /opt/demo/sense2.py 2>/dev/null 
python3 -W ignore /opt/demo/all.py /opt/demo/images/$DATE.jpg 2>/dev/null
