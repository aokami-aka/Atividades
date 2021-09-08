#!/bin/bash

oct1=$(cat ip.txt | awk -F  "." '{print $1}')
oct2=$(cat ip.txt | awk -F  "." '{print $2}')
oct3=$(cat ip.txt | awk -F  "." '{print $3}')
oct4=$(cat ip.txt | awk -F  "." '{print $4}')

for i in {1..4}
do
	v=o${i}
	echo -n "Octeto #$i: ${!v} em binário "
	echo "obase=2;$oct1"|bc
done
