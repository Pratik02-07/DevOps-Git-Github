#!/bin/bash
echo "script to install git "
echo "Installation started"

if [ "$(uname)" == "Linux" ]; then
    echo "this is linux box, installing git"
    
    # Check if apt is available (Ubuntu/Debian)
    if command -v apt &> /dev/null; then
        sudo apt update && sudo apt install git -y
    # Check if yum is available (CentOS/RHEL)
    elif command -v yum &> /dev/null; then
        sudo yum install git -y
    else
        echo "Error: Neither apt nor yum package manager found."
    fi

elif [ "$(uname)" == "Darwin" ]; then
    echo "this is not linux box"
    echo "this is Macos"
    brew install git
else
    echo "not installing"
fi
