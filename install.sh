#!/bin/bash

echo "Configure directories..."
mkdir scripts
mkdir output

echo "Installing nmap-scanners..."
cd scripts
git clone "https://github.com/bormaxi8080/nmap-vulners.git"
git clone "https://github.com/bormaxi8080/vulscan.git"
cd ..
echo "Done"