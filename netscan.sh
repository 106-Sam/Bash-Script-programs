#!/bin/bash
#Author : 106_Sam

if [ "$1" == "" ]
then 
	echo "Please provide an IP address!"
	echo "Syntax: sudo ./netscan.sh 192.168.0"
else
	for i in `seq 1 254`; 
	do 
		ping $1.$i -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &

	done
fi
		

