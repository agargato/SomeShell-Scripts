#!/bin/bash
#Use a file with IP addresses or hostname

detect() {
ping -c 1 $1 > /dev/null
[ $? -eq 0 ] && echo "Device connect $1"
}

echo "type the file addresses: "; read file
for i in $(cat $file)
do
	detect $i &
done
