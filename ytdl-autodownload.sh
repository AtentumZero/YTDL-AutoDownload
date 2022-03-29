#!/bin/sh

WORKINGDIR=~/
LIST=$WORKINGDIR/todownload.txt
# Start loop

# Runs through URLs in $LIST through youtube-dl
cat $LIST

while read LINE <&3; do
printf "Downloading $LINE..."
youtube-dl "$LINE"

done 3<$LIST
#End of loop
