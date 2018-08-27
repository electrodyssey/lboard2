#!/bin/bash

for f in *.svg do
do

convert -density 1536 -background white -flatten -resize 2048x2048 $f $f.png

done
