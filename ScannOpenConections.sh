#!/bin/bash

echo -n "introduzca una IP: "; read x
if [ "$x" -eq "" ]; then
	echo "=========empty==========="
	exit 1
else
	echo "Now is scaning ESTABLISHED Conections $x"
	netstat -putona | grep ESTABLISHED > result-conectionEstabilshed.txt
fi
