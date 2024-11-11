#!/bin/bash

# Define the file path
file_path="/usr/local/bin/tornet.py" # tornet is the name of the bash command we are creating

echo "Creating the new python script for tornet so we can use it in our bash console at path: $file_path"

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root."
    exit 1
fi

# Check if python3 is installed
if command -v python3 &> /dev/null; then
    echo "Python 3 is installed."
else
    echo "Python 3 is not installed. Installing..."
    sudo apt update
    sudo apt install -y python3
fi

echo "Installing tornet using pip."
pip install tornet # make sure you have python

# Create the Python script file with the provided content
echo "Creating bash command for tornet."
echo '#!/usr/bin/python3
# -*- coding: utf-8 -*-
import re
import sys
from tornet.tornet import main

if __name__ == "__main__":
    sys.argv[0] = re.sub(r"(-script\.pyw|\.exe)?$", "", sys.argv[0])
    sys.exit(main())' > "$file_path"

# Make the script executable
chmod +x "$file_path"

# Confirm the file has been created and is executable
if [[ -x "$file_path" ]]; then
    echo "Script created successfully at $file_path"
else
    echo "Failed to create the script. Make sure we have correct perms or install the python script manually and then place it at /usr/local/bin/ your self."
fi
