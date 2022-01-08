# nmap-scanner
## Nmap domain list scanner to find exploitable vulnerabilities

This is a domain list scanner to find exploited vulnerabilities used NMap utility (https://nmap.org) and specific security vulnerabilities scan scripts.

## Warning of responsibility
- This can be useful for pentesting the service only
- This tool is created solely for informational purposes only, and does not carry calls for any actions
- We do not bring responsibility, but you are warned!

## Sources:
> Domain list stored in *targets.txt* file.

## Installation:

1. Download and install NMap utility:
> https://nmap.org/download.html

2. Run install script:
> bash install.sh

3. Make sure *scripts* and *output* directories are created.

## Run scanner:

> bash nmap-scanner.sh

## Results:

> See *output* directory

## Search exploitable vulnerabilities:

> grep "EXPLOIT" ./output/*.txt