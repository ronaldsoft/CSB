#!/bin/bash

#cargar la lista de todos los maleID de forma unica
myIDS=`tail -n +2 $1 | cut -f 1 | sort -n | uniq`

for id in $myIDS
do
    #corta la cabecera, busca y cuenta los registros relacionados con el maleID
    count=`cut -f 1 $1 | grep -c -w $id`
    echo "Id:" $id " times:" $count
done 