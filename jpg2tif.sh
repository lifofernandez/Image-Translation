#!/usr/bin/env bash


#while getopts ":a:" opt; do
#  case $opt in
#    a)
#      echo "-a was triggered, Parameter: $OPTARG" >&2
#      ;;
#    \?)
#      echo "Invalid option: -$OPTARG" >&2
#      exit 1
#      ;;
#    :)
#      echo "Option -$OPTARG requires an argument." >&2
#      exit 1
#      ;;
#  esac
#done

IN_FOLDER=./imgs/*
OUT_FOLDER=./tifs

for f in $IN_FOLDER
do
  file_name=`basename $f`

  echo "Processing $file_name file..."
  # https://gist.github.com/henrik/1967035
  convert $f -type Grayscale $OUT_FOLDER/$file_name-BW.tif
done
