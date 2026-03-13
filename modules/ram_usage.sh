#!/bin/bash

function ramUsage() {
    #Get RAM usage from 2nd line of 'free' output for reuse
    local ram_usage_human_readable=$(free -h | awk 'NR==2{print}')
    #RAM human-readable format
    local total_ram=$(echo $ram_usage_human_readable | awk '{print $2}')
    local used_ram=$(echo $ram_usage_human_readable | awk '{print $3}')
    local free_ram=$(echo $ram_usage_human_readable | awk '{print $4}')
    #RAM usage (floating point with printf and 2 digits after .)
    local ram_usage=$(free | awk 'NR==2{printf "%.2f", $3 / $2 * 100}')

    echo "RAM USAGE:"
    echo "|--------------------------------------------------------------|"
    printf "| %-35s | %-23s | \n" "Total RAM" $total_ram
    printf "| %-35s | %-23s | \n" "Used RAM" $used_ram
    printf "| %-35s | %-23s | \n" "Free RAM" $free_ram
    printf "| %-35s | %-23s | \n" "% of used RAM" "$ram_usage%"
    echo "|--------------------------------------------------------------|"
}
