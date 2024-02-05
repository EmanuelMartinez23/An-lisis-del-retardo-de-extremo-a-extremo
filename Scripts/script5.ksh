#!/bin/ksh

# Escriba un script AWK que calcule el retardo promedio de extremo a extremo en una sesión.

# conseguimo el valor minimo 
tMinimo=$(./script3.ksh "$1")
# conseguimos el total de paquetes
totalPkt=$(./script2.ksh "$1")

awk -v tMin="$tMinimo" -v total="$totalPkt" '{if($1 == "D") {acum+= ($2-$3-(tMin))/8000} } END {print acum/total}' ../Trazas/"$1"
