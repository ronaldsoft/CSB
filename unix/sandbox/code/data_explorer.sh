#!/bin/bash

# extraer columna
echo "Column name:" `cut -d ',' -f $2 $1 | head -n 1`

#sacar el total de valores distintos
echo "Number of distinct values:" `cut -d ',' -f $2 $1 | tail -n +2 | sort | uniq | wc -l`

#sacar el minimo
echo "Minimum value: " `cut -d ',' -f $2 $1 | tail -n +2 | sort -n | head -n 1`

#sacar el maximo
echo "Maximum value: " `cut -d ',' -f $2 $1 | tail -n +2 | sort -n | tail -n 1`