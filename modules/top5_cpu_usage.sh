#!/bin/bash
function top5byCpu() {
    echo "TOP 5 PROCESS ORDER BY CPU USAGE:"
    echo "|-----------------------------------------------------------------|"
    printf "|%-40s | %-6s | %-12s | \n" "Process" "CPUUsg" "PID"
    echo "|-----------------------------------------------------------------|"
    ps aux --sort=-%cpu --no-headers | head -n 5 | \
    awk '{printf("|%-40s | %-6s | %-12s |\n", $11, $3, $2)}'
    echo "|-----------------------------------------------------------------|"
}

