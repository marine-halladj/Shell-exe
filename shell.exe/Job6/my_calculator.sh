#!/bin/bash

n1=$1

n2=$3

if [ $2 = "+" ]; then
      echo $((n1+n2))
elif [ $2 = "-" ]; then
      echo $((n1-n2))
elif [ $2 = "x" ]; then
      echo $((n1*n2))
elif [ $2 = "/" ]; then
       echo $((n1/n2))

fi
