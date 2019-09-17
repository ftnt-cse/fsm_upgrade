#!/bin/bash
[ "$#" -lt 1 ] && echo Usage: $0 https://SUPERVISOR_IP/PATH/TO/COLLECTOR/UPDATES && exit
phimageloader.py accelops-collector "$1"
sleep 4
phimageinstaller.py accelops-collector
