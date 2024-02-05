#!/bin/ksh


# Este script es para contar el numero total de frases (talkspurts) en una traza de retardo

grep ^[!] "$1" | wc -l

