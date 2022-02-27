#!/bin/bash -x
DESTS=( "hello" "world" )
TIME="180s"
while TRUE
do
   for DEST in ${DESTS[@]}
   do
      echo "$TIME: $DEST"
      #  docker run -ti --rm alpine/bombardier -c 1000 -d $TIME -l $DEST
   done
done
