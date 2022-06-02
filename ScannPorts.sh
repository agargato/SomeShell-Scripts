#!/bin/bash

echo -n "introduzca una IP: "; read x
if [ "$x" -eq "" ]; then
	echo "=========empty==========="
	exit 1
else
	echo "Now is scaning IPAddress $x"
	nc -nvz $x 1-1000 > result.txt
fi
