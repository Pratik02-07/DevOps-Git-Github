#!/bin/bash

check_disk() {
    echo "Checking disk..."
    df -h
}
echo "======================================"
check_memory() {
    echo "Checking memory..."
    free -h
}

check_disk
echo "++++++++++++++++++++++++++++++++++++++"
check_memory
