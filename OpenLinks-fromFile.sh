#!/bin/bash

clear
echo "choose the links file"
read link

#verify fill out
if [ -z $link ]; then
	echo "empty..."
	exit
fi

#verify existency
if [ !-e $link ]; then
	echo "No exist..."
	exit
fi

#running...
echo "reading link from file $link\..."
for url in $(cat $link)
do
	curl $url &
	#firefox -new-tab $url &
	sleep 1
done
