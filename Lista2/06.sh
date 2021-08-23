#!/bin/bash

if [ $(wc -l < $1) -le 5 ]
then
		head -n 1 $1
	else
			echo "BAD"
			echo "O arquivo \"$1\" não existe ou possui mais de 5 linhas"
fi
