#!/bin/bash

function systemInformation() {
    local os_version=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
    local uptime=$(uptime -p)
    local logged_users=$(w --no-header | wc -l)

    echo "SYSTEM INFO:"
    echo "|---------------------------------------------------------------|"
    printf "| %-30s | %-28s | \n" "Operating system version" "$os_version"
    printf "| %-30s | %-28s | \n" "System uptime" "$uptime"
    printf "| %-30s | %-28s | \n" "Load average (1 / 5 / 15 min)" "$(awk '{print $1,$2,$3}' /proc/loadavg)" 
    printf "| %-30s | %-28s | \n" "Logged in users" $logged_users
    echo "|---------------------------------------------------------------|"
}

