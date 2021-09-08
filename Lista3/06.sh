#!/bin/bash

read -sp "Digite a senha: " PASS
echo ""
if [ ${#PASS} -gt 7 ] && [ $(echo $PASS |grep -E "[a-z]") ]
then
	if [ $(echo $PASS|grep -E "[A-Z]") ] && [ $(echo $PASS |grep -E "[0-9]") ]
	then
		echo "senha foderosa, essa nem o anonymous descobre; Obedece ao padrão"
	else
			echo "senha fraquinha, espero não ter digitado 123 ou sua data de nascimento :/ ; não obedece ao padrão"
	fi
fi
