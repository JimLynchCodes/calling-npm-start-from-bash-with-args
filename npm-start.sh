#!/usr/bin/env bash

# Run this bash script with arbitrary arguments and it will call npm start
# with those arguments. If no arguments passed in it just runs "npm start".  

npm_parameters=""

if [ "$#" -eq "0" ]; then
   npm start
   exit
fi

eval npm start -- "'$*'"