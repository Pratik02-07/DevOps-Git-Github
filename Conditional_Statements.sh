disk_usage=79

if [ "$disk_usage" -gt 80 ]; then
    echo "WARNING: Disk usage is high"
else
    echo "Disk usage is normal"
fi
