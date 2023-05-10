#!/bin/bash
#llama a todos los archivos .txt de la carpeta
FILES=../data/Saavedra2013/*.txt

for f in $FILES
do
    rows=`cat $f | wc -l`
    cols=`head -n 1 $f | tr -d ' ' | tr -d '\n' | wc -c`
    echo "File: $f Rows: $rows Cols: $cols"
done