#!/bin/bash

# Check if subnet argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <subnetwork>"
    exit 1
fi

# Run ARP scan using Nmap
sudo nmap -sn -PR "$1"
