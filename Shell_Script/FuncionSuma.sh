#! /bin/bash

#Declaramos la función suma
#function suma(){
  #local a=$1
  #local b=$2
 # echo $(( $a + $b ))
#}
# Llamamos a la función Suma
#suma 4 5

#MISMO METODO PERO CON RETURN Y LET:

function suma(){
  local a=$1
  local b=$2
  local c=$3
  let d=$1+$2+$3
  return $d
}

suma 4 2 3

res=$?
echo El resultado de la operación es: $res
