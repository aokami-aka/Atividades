#!/bin/bash

mkdir /tmp/$(date +%H-%d-%m-%Y)
cp * /tmp/$(date +%H-%d-%m-%Y)

echo "-------- Compactando diretório criado --------"
zip -r compaq.zip /tmp/$(date +%H-%d-%m-%Y)

echo -e "\n-------- Removendo diretório criado --------"
rm -r /tmp/$(date +%H-%d-%m-%Y)
