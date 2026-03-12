# OS version
cat /etc/os-release | awk -F = 'NR==1{print $2}'
# uptime
uptime -p  #system is 'up x hours, x minutes'
# load_average
uptime | awk -F 'load average: ' '{print $2}'
