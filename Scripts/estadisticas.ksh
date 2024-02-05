#!/bin/ksh

# Este escript es para sacar las estadisticas de las trazas

frases=$(./script1.ksh "$1")
pkt=$(./script2.ksh "$1")
retardo=$(./script5.ksh "$1")
minimo=$(./script3.ksh "$1")

echo "Datos de la traza $1"
echo "Frases: $frases"
echo "Paquetes: $pkt"
echo "Retardo de extremo a extremo: $retardo"
echo "Minimo: $minimo"
