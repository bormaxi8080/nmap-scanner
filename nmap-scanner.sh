#!/bin/bash
# https://github.com/bormaxi8080/nmap-scanner

echo "This is a domain list scanner to find exploitable vulnerabilities used NMap utility (https://nmap.org) and specific security vulnerabilities scan scripts."
echo "Starting nmap scan for domains specified in targtes.txt file..."

echo "Clearing output directory..."
rm -rf ./output/*

count=0

echo "Scanning target domains..."

while IFS= read -r domain
do
  echo "Scanning $domain:"

  # nmap intense scan
  echo "nmap -T4 -A -v "$domain""
  nmap -T4 -A -v "$domain" > "./output/$domain".txt

  # Connect additional scripts

  # Scanner: https://github.com/vulnersCom/nmap-vulners
  echo "nmap -sV --script=./scripts/nmap-vulners/vulners.nse "$domain""
  nmap -sV --script=./scripts/nmap-vulners/vulners.nse "$domain" > "./output/$domain.vulners.txt"

  # Scanner: https://github.com/scipag/vulscan
  echo "nmap -sV --script=./scripts/vulscan/vulscan.nse "$domain""
  nmap -sV --script=./scripts/vulscan/vulscan.nse "$domain" > "./output/$domain.vulscan.txt"

  # NOTE: Here you can connect other scripts for scanning vulnerabilities

  let "count+=1"
done < targets.txt

echo "Found exploitable vulnerabilities:"
grep "*EXPLOIT*" ./output/*.txt

echo "Done."
echo "Scan completed. $count target domains scanned. See scan results in output directory."