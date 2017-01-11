#!/usr/bin/env bash
# usage: Process some black and withe TIFF files with Tesseract

IN_FOLDER=./txts/*
LANG=deu
OUT_FOLDER=./trns

for f in $IN_FOLDER
do
  file_name=`basename $f`

  echo "Processing $file_name file.."
  # https://github.com/soimort/translate-shell
  cat $f | ./trans -brief > $OUT_FOLDER/$file_name-TRN.txt

  # To try:
  # Feed tesseract with a font to compare with the one in the img
  # http://www.joyofdata.de/blog/a-guide-on-ocr-with-tesseract-3-03/
done
