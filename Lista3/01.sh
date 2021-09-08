#!/bin/bash

num_linhas=$(wc -l <$1)

if [ $2 -gt $num_linhas ]
then
                echo "Falha: o arquivo '$1' possui apenas $num_linhas linhas"

        else
                        sed -n -e $2p $1

fi
