#!/bin/bash

#To avoid multi-usage of 'top' command we will save output of top command once into variable
cpu_line=$(top -b -n 1 | grep '%Cpu')
#and split it to the required variables for further usage
unnice=$(echo $cpu_line | awk -F , '{print $1}' | awk '{print $2}')
kernel=$(echo $cpu_line | awk -F , '{print $2}' | awk '{print $1}')
niced=$(echo $cpu_line | awk -F , '{print $3}' | awk '{print $1}')
idle=$(echo $cpu_line | awk -F , '{print $4}' | awk '{print $1}')
waitingio=$(echo $cpu_line | awk -F , '{print $5}' | awk '{print $1}')
hw_interrupts=$(echo $cpu_line | awk -F , '{print $6}' | awk '{print $1}')
sw_interrupts=$(echo $cpu_line | awk -F , '{print $7}' | awk '{print $1}')
stolen_by_hyperv=$(echo $cpu_line | awk -F , '{print $8}' | awk '{print $1}')

echo "CPU USAGE:"
echo "|--------------------------------------------------------------|"
printf "| %-40s | %-17s |\n" "Category" "%"
echo "|--------------------------------------------------------------|"
printf "| %-40s | %-18s| \n" "Un-ninced user processes" $unnice
printf "| %-40s | %-18s| \n" "Kernel processes" $kernel
printf "| %-40s | %-18s| \n" "Niced user processes" $niced 
printf "| %-40s | %-18s| \n" "Kernel idle handler" $idle
printf "| %-40s | %-18s| \n" "Waiting for I/O completion" $waitingio
printf "| %-40s | %-18s| \n" "Servicing hardware interrupts" $hw_interrupts
printf "| %-40s | %-18s| \n" "Servicing software interrupts" $sw_interrupts
printf "| %-40s | %-18s| \n" "Time stolen by the hypervisor (optional)" $stolen_by_hyperv
echo "|--------------------------------------------------------------|"