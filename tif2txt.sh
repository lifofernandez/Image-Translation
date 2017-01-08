#!/usr/local/bin/bash
# usage: Process some black and withe TIFF files with Tesseract

IN_FOLDER=./tifs/*
LANG=deu
OUT_FOLDER=./txts

for f in $IN_FOLDER
do
  file_name=`basename $f`

  echo "Processing $file_name file..."
  # https://gist.github.com/henrik/1967035
  tesseract -l $LANG $f $OUT_FOLDER/$file_name-OCR

  # To try:
  # Feed tesseract with a font to compare with the one in the img
  # http://www.joyofdata.de/blog/a-guide-on-ocr-with-tesseract-3-03/
done
