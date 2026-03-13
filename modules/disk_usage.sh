#!/bin/bash

function diskUsage() {
    local disk_usage=$(df --total -h | tail -n 1)
    local total_space used_space free_space percentage_used
    read total_space used_space free_space percentage_used <<< $(echo $disk_usage | awk '{print $2,$3,$4,$5}')

    echo "DISK USAGE:"
    echo "|---------------------------------------------------------------|"
    printf "| %-35s | %-23s | \n" "Total space" "$total_space"
    printf "| %-35s | %-23s | \n" "Used space" "$used_space"
    printf "| %-35s | %-23s | \n" "Free space" "$free_space"
    printf "| %-35s | %-23s | \n" "Percentage of used space" "$percentage_used"
    echo "|---------------------------------------------------------------|"
}


