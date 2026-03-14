#!/bin/bash

# error processing and correct quit of the script when unexpected behavior encountered
set -euo pipefail

# added trap for script debugging
trap 'echo "This script execution stopped due to an error in $LINENO"' ERR

# required commands/apps checkup. confirm if all dependencies installed.
REQUIRED_CMDS=("top" "free" "df" "awk" "grep" "lsb_release")
for cmd in "${REQUIRED_CMDS[@]}"; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "Error: $cmd is not installed. Please install it and try again."
        exit 1
    fi
done
# absolut directory setup
BASE_DIR=$(dirname "$(realpath "$0")")
# modules import
source "$BASE_DIR/modules/cpu_usage.sh"
source "$BASE_DIR/modules/ram_usage.sh"
source "$BASE_DIR/modules/disk_usage.sh"
source "$BASE_DIR/modules/top5_cpu_usage.sh"
source "$BASE_DIR/modules/top5_mem_usage.sh"
source "$BASE_DIR/modules/os_info.sh"
# prompt user choice
printf "PLEASE, CHOOSE REQUIRED SERVER INFORMATION: \n1) Overview \n2) CPU Usage \n3) RAM Usage \n4) Disk Usage \n5) Top 5 processes by CPU usage \n6) Top 5 processes by memory usage \n7) System information \n" 
read -p "Please, insert required option:" choice
# case to process a chosen option
case "$choice" in
    1) systemInformation; cpuUsage; diskUsage; ramUsage; top5byCpu; top5byMem ;;
    2) cpuUsage ;;
    3) ramUsage ;;
    4) diskUsage ;;
    5) top5byCpu ;;
    6) top5byMem ;;
    7) systemInformation ;;
    *) echo "Invalide choice" ;;
esac

