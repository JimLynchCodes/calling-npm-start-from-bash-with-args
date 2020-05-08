#!/bin/sh
# Build your stuff with the input arguments
npm_parameters=""
npm_separator="--"
for var in "$@"
do 
  npm_parameters="$npm_parameters $npm_separator$var"
done
# Then call your npm start
eval npm start $npm_parameters