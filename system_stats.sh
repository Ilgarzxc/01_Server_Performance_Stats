#!/bin/bash

set -euo pipefail

trap 'echo ""This script execution stopped due to an error in $LINENO"' ERR

source ./modules/cpu_usage.sh
source ./modules/ram_usage.sh

printf "echo ===Choose required server information=== \n1) Overview \n2) CPU Usage \n3) RAM Usage \n4) Disk Usage \n5) Top 5 processes by CPU usage \n6) Top 5 processes by memory usage" 
read -p "\nPlease, insert required option:" choice

case "$choice" in:
    1) cpuUsage ;;
    2) ramUsage ;;
esac