#!/bin/bash

#Exibir página
function Exib_pag() {
  echo -e "\nExibindo a página $link_ask ..."
  echo " "
  cat /tmp/projeto.html |sed -r 's/$/paimon/g' | tr '\n' '5' |sed 's/<[^>]*>//g' |sed -r 's/body ?\{.+\}//g' | sed 's/paimon5/\n/g'
  echo " " 
}

#Exibir lista de links 
function linkList_show() {
  rm /tmp/links.txt /tmp/links_new.txt /tmp/links_final.txt &>/dev/null
  echo -e "\nExibindo lista de links... "
  cat /tmp/projeto.html |grep -E -o '<a[^>]* href="([^"]*)"' > /tmp/links.txt
  cat /tmp/links.txt | sed -E 's/<a href=|"//g' >/tmp/links_new.txt
  count=0
  while read -r line; do 
    let count=count+1
    linha=$(sed -n ${count}p /tmp/links_new.txt)
    if [ $(echo $linha |grep -E -o '^.') == '/' ];
    then 
      echo " $link_ask$linha" >> /tmp/links_final.txt
    else 
      echo $linha >> /tmp/links_final.txt
    fi 
  done < /tmp/links_new.txt
  cat -n /tmp/links_final.txt    
  echo " "
}

#Acessar link
function Acess_Link() {
  linkList_show 
  read -p "Digite o índice do link desejado: " linkID
  count=0
  while read -r line; do 
    let count=count+1
    linha=$(sed -n ${count}p /tmp/links_final.txt)
    if [ $count == $linkID ];
    then
      wget -q $linha -O /tmp/projeto.html
      link_ask=$linha
    fi
  done < /tmp/links_final.txt
  
}

#Exibir lista de imagens
function imgList_show() {
  rm /tmp/images.txt /tmp/images_new.txt /tmp/images_final.txt &>/dev/null
  echo -e "\nExibindo lista de imagens... "
  cat /tmp/projeto.html |grep -E -o '<img[^>]*src="([^"]*)"' > /tmp/images.txt
  cat /tmp/images.txt | sed -E 's/<img|src=| |"//g' >/tmp/images_new.txt
  count=0
  while read -r line; do 
    let count=count+1
    linha=$(sed -n ${count}p /tmp/images_new.txt)
    if [ $(echo $linha |grep -E -o '^.') == '/' ];
    then 
      echo " $link_ask$linha" >> /tmp/images_final.txt
    else 
      echo $linha >> /tmp/images_final.txt
    fi 
  done < /tmp/images_new.txt
  cat -n /tmp/images_final.txt    
  echo " " 
}

#Baixar imagem
function Acess_img() {
  imgList_show
  read -p "Digite o índice da imagem desejada: " imgID
  count=0
  while read -r line; do 
    let count=count+1
    linha=$(sed -n ${count}p /tmp/images_final.txt)
    if [ $count == $imgID ];
    then
      wget -q $linha
      link_ask=$linha
    fi
  done < /tmp/images_final.txt
}