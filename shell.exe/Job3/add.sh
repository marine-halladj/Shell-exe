#!/bin/bash

echo $(($1 + $2))


 
echo "Premier nombre a additioner"
read nb1
echo "Deuxieme nombre a additioner"
read nb2
sum=$(expr $nb1 + $nb2)
echo "$sum"
