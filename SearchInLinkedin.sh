#!/bin/bash

clear
echo "Name: "; read name
if [ -z $name ]; then
	echo "Name is empty"
	exit
fi

echo "Last Name: "; read last
if [ -z $last ]; then
	echo "Last Name is empty"
	exit
fi

echo
echo "starting search to $name $last"
read -p "Press ENTER to continue..."

firefox https://www.linkedin.com/search/result/all/?keywords=$name+$last &
