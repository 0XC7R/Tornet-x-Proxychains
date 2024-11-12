#!/bin/bash

echo "Updating your system using apt && apt-get then installing the following:\npip\npython3\nproxychains4 & libproxychains4\ntornet via pip"
sudo apt update && sudo apt-get update && sudo apt install pip && sudo apt install python3 && sudo apt install proxychains && sudo apt install proxychains4 && sudo apt install libproxychains4 && pip install tornet
