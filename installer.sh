#!/bin/bash

echo "Updating your system using apt && apt-get then installing the following:\npip\npython3\nproxychains\ntornet via pip"
sudo apt update && sudo apt-get update && sudo apt install pip && sudo apt install python3 && sudo apt install proxychains && pip install tornet
