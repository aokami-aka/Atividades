#!/bin/bash

read -p "Digite um número: " num

echo -e "\nCalculando valor do número digitado..."
echo "."
echo ".."
echo "..."
echo "...."
echo "....."
num=$(($num+134))

echo -e "\nValor final: $num"
