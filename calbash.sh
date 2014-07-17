#!/bin/bash
# XPROC - Calbash

set -u
export PATH=$PATH:./

# CONFIGS
INPUT=./input/*.xml
OUTPUT=./output

#java -cp calabash.jar com.xmlcalabash.drivers.Main ../xproc-examples-read-only/04_xmlschema_validate_transform_save/pipe.xpl path=./

for f in $INPUT
do
  fileName=$(basename $f)
  echo "========================================================================================="
  echo "Processing $f file"  
  echo "File Name $fileName"
  # take action on each file. $f store current file name
  java -cp calabash.jar com.xmlcalabash.drivers.Main -isource=$f -oresult=$OUTPUT/$fileName.xml -oreport=$OUTPUT/$fileName-report.xml -oresult2=$OUTPUT/$fileName-2.xml $1
done