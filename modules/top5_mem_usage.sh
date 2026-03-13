#!/bin/bash
function top5byMem() {
    echo "TOP 5 PROCESS ORDER BY RAM USAGE:"
    echo "|---------------------------------------------------------------|"
    printf "|%-38s | %-6s | %-10s | \n" "Process" "RAMUsg" "PID"
    echo "|---------------------------------------------------------------|"
    ps aux --sort=-%mem --no-headers | head -n 5 | \
    awk '{printf("| %-38s | %-6s | %-10s | \n", $11, $4, $2)}'
    echo "|---------------------------------------------------------------|"
}

