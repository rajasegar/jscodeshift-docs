#!/bin/sh
#
# SCRIPT: write-md.sh
# AUTHOR: Rajasegar Chandran
# DATE: 21 May 2019
#
# PLATFORM: Unix and OSX, not checked in Windows
#
# PURPOSE: 
# This script is to generate the markdown files from the Typescript definitions
# This will read each top-level definition (def) from the spec file and create corresponding
# example in the markdown file
#
# USAGE: $ ./write-md.sh babel-core.ts

writeExample() {
  # Lowercase first letter
  APINAME=$(echo $2 | cut -c1 | tr [A-Z] [a-z])$(echo $2 | cut -c2-)

cat >> $1 <<- EOM

### $2

#### From
\`\`\`js
j.$APINAME()
\`\`\`

#### To
\`\`\`js
\`\`\`


EOM
}

main() {
  INPUT_FILE=$1
  echo Reading $INPUT_FILE ...
  INPUT_FILE_NAME=$(basename $INPUT_FILE .ts)
  #echo $INPUT_FILE_NAME
  DEFINITIONS=$(sed -n '/^[ ]*def([a-zA-Z"]*)$/p' $INPUT_FILE | sed -n 's/def//;s/(//;s/"//g;s/)//p') 
  COUNTER=0
  for i in $DEFINITIONS; do
    echo Writing definition: $i ...
    writeExample "$INPUT_FILE_NAME.md" $i
    ((COUNTER++))
  done
  echo Total No. of definitions written: $COUNTER
  echo Markdown file generated successfully
}


main $1
