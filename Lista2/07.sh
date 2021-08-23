#!/bin/bash

if [ $(echo "$1>$2"|bc) -gt 0 ]
then
		echo "Menor número: $2"
	else
			echo "Menor número: $1"
fi
