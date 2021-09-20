#!/bin/bash

cat nomes | cut -d' ' -f1,2 > Meninos.txt
cat nomes | cut -d' ' -f3- > Meninas.txt
