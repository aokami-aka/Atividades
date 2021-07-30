#!/bin/bash

arq1=$(echo "scale=2;($1*100)/$2"|bc)
arq2=$(echo "scale=2;($2*100)/$1"|bc)

echo "Valor final: $arq1% $arq2%"
