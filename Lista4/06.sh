#!/bin/bash

function teste {
	a=$(cat $1)
	max=0
	for v in ${a[@]}; do
		    if (( $v > $max )); then max=$v; fi; 
		    done
		    echo "Maior número: $max"
	    }

    function teste2 {
	    a=$(cat $1)
	    min=$(head -n 1 $1|awk '{print $1}')
	    for v in ${a[@]}; do
		        if (( $v < $min )); then min=$v; fi;
			done
			echo "Menor número: $min"
		}
	teste $1
	teste2 $1
