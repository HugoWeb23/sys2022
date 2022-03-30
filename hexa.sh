#!/bin/bash

function Convert() {
data=$1 # Texte ou hexadécimal
type=$2 # Type d'opération 1 => texte vers hexa, 2 => hexa vers texte

if [[ $type == 1 ]]
then
  hex=$(xxd -pu <<< "$data")
  echo "$data en hexadécimal => $hex"
fi

if [[ $type == 2 ]]
then
  ascii=$(xxd -r -p <<< "$data")
  echo "$data en ASCII => $ascii"
fi
}

Convert "Bonjour tout le monde" 1
Convert "426f6e6a6f757220746f7574206c65206d6f6e64650a" 2