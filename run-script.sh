#!/bin/sh
# Build your stuff with the input arguments

echo "$0"
echo $0
echo $1
echo $2
echo $3
echo $#


npm_parameters=""

if [ "$#" -eq "0" ]; then
   npm start
   exit
fi

for i in {1..$#}
do 
  npm_parameters="$npm_parameters $i"
done

eval npm start -- $npm_parameters


# for var in "$@"
# do 
#   npm_parameters="$npm_parameters $npm_separator$var"
# done
# Then call your npm start