#!/bin/bash

source Functions.sh

#Exib_pag
read -p "Digite o link desejado: " link_ask
wget -q $link_ask -O /tmp/projeto.html


while true; do
        #clear
        echo "========== Vizualizador de sites da Web ==========O"
        echo "1) Exibir página                                  |"
        echo "                                                  |"
        echo "2) Exibir lista de links                          |"
        echo "                                                  |"
        echo "3) Acessar link                                   |"
        echo "                                                  |"
        echo "4) Exibir lista de imagens                        |"
        echo "                                                  |"
        echo "5) Baixar imagem                                  |"
        echo "                                                  |"
        echo "6) Fechar programa                                |"
        echo "==================================================O"
        echo " "
        read -p 'Digite o índice da opção desejada: ' options
        case $options in
                "1") Exib_pag;read -p "Digite qualquer tecla para continuar: " ;;
                "2") linkList_show;read -p "Digite qualquer tecla para continuar: "  ;;
                "3") Acess_Link ;;
                "4") imgList_show;read -p "Digite qualquer tecla para continuar: " ;;
                "5") Acess_img ;;
                "6") break ;;
                *) echo -e "\nDigite um índice válido" ;;
        esac
done
