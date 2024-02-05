#!/bin/ksh

# Este script es para encontrar la diferencia minima entre la estampa de tiempo al recpetor menos de la del emisor.

awk '{print $2-$3}' "$1" | sort -n | head -n 1


