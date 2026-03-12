#!/bin/bash

set -euo pipefail

trap 'echo ""This script execution stopped due to an error in $LINENO"' ERR

source ./modules/cpu_usage.sh
source ./modules/ram_usage.sh
source ./modules/disk_usage.sh
source ./modules/top5_cpu_usage.sh
source ./modules/top5_mem_usage.sh

printf "echo ===Choose required server information=== \n1) Overview \n2) CPU Usage \n3) RAM Usage \n4) Disk Usage \n5) Top 5 processes by CPU usage \n6) Top 5 processes by memory usage" 
echo $"\nPlease, insert required option:" 
read choice

case "$choice" in
    1) cpuUsage; diskUsage; ramUsage; top5byCpu; top5byMem ;;
    2) cpuUsage ;;
    3) ramUsage ;;
    4) diskUsage ;;
    5) top5byCpu ;;
    6) top5byMem ;;
esac