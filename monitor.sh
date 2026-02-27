#!/bin/bash

CONTAINER_NAME="mycontainer"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

docker stats --no-stream --format "{{.CPUPerc}} {{.MemUsage}}" $CONTAINER_NAME | \
while read cpu mem
do
  echo "$TIMESTAMP | CPU: $cpu | Memory: $mem" >> /opt/container-monitor/logs/monitor.log
done
