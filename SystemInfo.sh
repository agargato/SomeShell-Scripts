#!/bin/bash

clear
echo -n "System Info"
echo
echo 

spacer="=========================================="
echo "Memory Status"
echo $spacer
free
echo

echo "Disk Status"
echo $spacer
df -h
echo

echo "System Version"
echo $spacer
cat /proc/version
echo
