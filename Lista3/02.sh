#!/bin/bash

echo "-------- Antes do 'tr' --------"
cat $1
echo "-------- Depois do 'tr' --------"
tr 0-9 "*" < $1
