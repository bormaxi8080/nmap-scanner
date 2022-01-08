#!/bin/bash

echo "Configure directories..."
mkdir scripts
mkdir output

echo "Installing nmap-scanners..."
cd scripts
git clone "https://github.com/vulnersCom/nmap-vulners.git"
git clone "https://github.com/scipag/vulscan.git"
cd ..
echo "Done"