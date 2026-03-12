#!/bin/bash

disk_usage=$(df --total -h | tail -n 1)
read total_space used_space free_space percentage_used <<< echo $disk_usage | awk '{print $2,$3,$4,$5}'

echo "DISK USAGE:"
echo "|--------------------------------------------------------------|"
printf "| %-40s | %-18s| \n" "Total space" $total_space
printf "| %-40s | %-18s| \n" "Used space" $used_space
printf "| %-40s | %-18s| \n" "Free space" $free_space
printf "| %-40s | %-18s| \n" "Percentage of used space" $percentage_used
echo "|--------------------------------------------------------------|"