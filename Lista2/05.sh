#!/bin/bash

read -p "digite o nome do primeiro arquivo: " arq1

ls $arq1 2>/dev/null 1>/dev/null
if [ $? -eq 2 ]
then
		echo "-ERROR- O arquivo \"$arq1\" não existe"
			exit
fi

read -p "digite o nome do segundo arquivo: " arq2

ls $arq2 2>/dev/null 1>/dev/null
if [ $? -eq 2 ]
then
		echo "-ERROR- o arquivo \"$arq2\" não existe"
			exit
fi

a=$(wc -l < $arq1)
b=$(wc -l < $arq2)

if [ $a -gt $b ]
then
		echo -e "\nArquivo com mais linhas: \"$arq1\", $a linhas"
	else
			echo -e "\nArquivo com mais linhas: \"$arq2\", $b linhas"
fi
