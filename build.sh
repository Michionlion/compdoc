#!/bin/bash
# This script converts any ppm file to a png to save storage space.
# Requires imagemagick!

for file in *.ppm; do
	if [[ -f "$file" ]]; then
		outfile="${file%.ppm}.png"
		echo "$file => $outfile"
		\convert "$file" $outfile
		\rm "$file"
	fi
done
