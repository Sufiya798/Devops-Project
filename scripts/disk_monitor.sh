#!/bin/bash

THRESHOLD=80
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $USAGE -gt $THRESHOLD ]; then
    echo " Disk usage is high: $USAGE%" >> ../logs/system.log
else
    echo " Disk usage normal: $USAGE%" >> ../logs/system.log
fi

