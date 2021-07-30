#!/bin/bash

read -p 'Fale o nome do diretório 1: ' diretorio1
read -p 'Fale o nome do diretório 2: ' diretorio2
read -p 'Fale o nome do diretório 3: ' diretorio3
read -p 'Fale o nome do diretório 4: ' diretorio4
read -p 'Fale o nome do diretório 5: ' diretorio5

echo -e "\n-------- DIRETÓRIO 1 --------"
ls $diretorio1

echo -e "\n-------- DIRETÓRIO 2 --------"
ls $diretorio2

echo -e "\n-------- DIRETÓRIO 3 --------"
ls $diretorio3

echo -e "\n-------- DIRETÓRIO 4 --------"
ls $diretorio4

echo -e "\n-------- DIRETÓRIO 5 --------"
ls $diretorio5
