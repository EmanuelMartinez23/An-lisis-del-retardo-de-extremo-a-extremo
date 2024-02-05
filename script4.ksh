#!/bin/ksh

# Escriba script AWK que reciba una traza como entrada y entregue un archivo con dos columnas:
# tiempo de la sesión en segundos, y retardo de extremo a extremo en segundos.


# d.end 
# columna 2 t.receptor
# columna 3 t.emisor
# tiempo minimo script 3
tMinimo=$(./script3.ksh "$1")

# t.session
# t1 col 3
t1Columna3=$(awk '{print $3}' "$1" | head -n 1)

#echo "$tMinimo"
#echo "$t1Columna3"

echo "x,y"
# -v para pasarle dos  parametro a awk  por ultimo con sed agregamos una coma entyre cada valor para poder leer y graficar mejor
awk -v tMin="$tMinimo" -v t1col3="$t1Columna3" '{if($1 == "D") {print (($3-t1col3)/8000), ($2-$3-(tMin))/8000;}}' "$1" | sed 's/\ /,/g'                                                                                                                                                                                                                                                                                       
