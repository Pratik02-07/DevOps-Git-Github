#!/bin/bash

echo "===== SERVER HEALTH ====="

echo "Disk:"
df -h

echo "Memory:"
free -h

echo "CPU:"
uptime

echo "Nginx:"
systemctl status nginx
