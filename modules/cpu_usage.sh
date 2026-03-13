#!/bin/bash

function cpuUsage() {
    #To avoid multi-usage of 'top' command we will save output of top command once into variable
    local cpu_line=$(top -b -n 1 | grep '%Cpu')
    #and split it to the required variables for further usage
    local unnice=$(echo $cpu_line | awk -F , '{print $1}' | awk '{print $2}')
    local kernel=$(echo $cpu_line | awk -F , '{print $2}' | awk '{print $1}')
    local niced=$(echo $cpu_line | awk -F , '{print $3}' | awk '{print $1}')
    local idle=$(echo $cpu_line | awk -F , '{print $4}' | awk '{print $1}')
    local waitingio=$(echo $cpu_line | awk -F , '{print $5}' | awk '{print $1}')
    local hw_interrupts=$(echo $cpu_line | awk -F , '{print $6}' | awk '{print $1}')
    local sw_interrupts=$(echo $cpu_line | awk -F , '{print $7}' | awk '{print $1}')
    local stolen_by_hyperv=$(echo $cpu_line | awk -F , '{print $8}' | awk '{print $1}')

    echo "CPU USAGE:"
    echo "|--------------------------------------------------------------|"
    printf "| %-40s | %-17s |\n" "Category" "%"
    echo "|--------------------------------------------------------------|"
    printf "| %-40s | %-18s| \n" "Un-niced user processes" $unnice
    printf "| %-40s | %-18s| \n" "Kernel processes" $kernel
    printf "| %-40s | %-18s| \n" "Niced user processes" $niced 
    printf "| %-40s | %-18s| \n" "Kernel idle handler" $idle
    printf "| %-40s | %-18s| \n" "Waiting for I/O completion" $waitingio
    printf "| %-40s | %-18s| \n" "Servicing hardware interrupts" $hw_interrupts
    printf "| %-40s | %-18s| \n" "Servicing software interrupts" $sw_interrupts
    printf "| %-40s | %-18s| \n" "Time stolen by the hypervisor (optional)" $stolen_by_hyperv
    echo "|--------------------------------------------------------------|"
}