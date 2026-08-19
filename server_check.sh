#!/bin/bash

#1. Accepts environment as $1
ENVIRONMENT="$1"
echo "$1"

#2. Prints hostname
CURRENT_HOST=$(hostname)
echo "$CURRENT_HOST"

#3. Prints current user
CURRENT_USER=$(whoami)
echo "$CURRENT_USER"

#4. Checks whether /tmp exists
if [ -d "/tmp" ]; then
        echo "/tmp Directory: EXISTS"
else
        echo "/tmp Directory: MISSING"
fi

echo "------------------------------------------"

#5. Checks disk usage
DISK_USAGE=$(df)
echo "$DISK_USAGE"

#6. Gives WARNING if disk usage is high
check_disk_usage() {
    local threshold=80
    local usage
    usage=$(df / | awk 'NR==2 {gsub("%",""); print $5}')
    
    echo "Disk Usage (/): ${usage}%"
    if [ "$usage" -ge "$threshold" ]; then
        echo "WARNING: Disk usage is high (>= ${threshold}%)!"
    else
        echo "Disk usage is within normal limits."
    fi
}
check_disk_usage

#7. Checks whether nginx is running
check_nginx_service() {
    echo -n "Nginx Status: "
    if systemctl is-active --quiet nginx 2>/dev/null; then
        echo "RUNNING"
        return 0
    elif pgrep -x nginx >/dev/null 2>&1; then
        echo "RUNNING (process found)"
        return 0
    else
        echo "NOT RUNNING"
        return 1
    fi
}
#8. Prints the nginx status
NGINX_STATUS=&(sudo systemctl status nginx)
echo "$NGINX_STATUS"

#9. Saves the complete output to server_report.log
REPORT_FILE="server_report.log"
#10. Uses functions for disk and service checks

#11. Returns a non-zero exit code if nginx is not running
exit $EXIT_CODE
