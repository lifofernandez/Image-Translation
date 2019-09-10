#!/usr/bin/env python
from googletrans import Translator

import argparse
parser = argparse.ArgumentParser()

parser.add_argument( 
 'archivos',
 help  = 'Al menos un archivo en formato para procesar',
 type  = argparse.FileType( 'r' ),
 nargs = '+'
)

args = parser.parse_args()
for archivo in args.archivos:
  print( 'TRADUCCIÓN: ' + archivo.name )
  lineas = [line.rstrip('\n') for line in open(archivo.name)]
  salida = open(archivo.name + '_ES', "w")
  translator = Translator()
  translations = translator.translate( lineas[0:-2], dest='es')
  for translation in translations:
    #print(translation.origin, ' -> ', translation.text)
    print( translation.text )
    salida.write( translation.text + "\r\n" )
  salida.close()

