#!/bin/bash
#corta la cabecera, busca y cuenta los registros relacionados con el maleID
cut -f 1 $1 | grep -c -w $2