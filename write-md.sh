#!/bin/sh

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
  echo $INPUT_FILE 
  INPUT_FILE_NAME=$(basename $INPUT_FILE .ts)
  echo $INPUT_FILE_NAME
  DEFINITIONS=$(sed -n '/^[ ]*def([a-zA-Z"]*)$/p' $INPUT_FILE | sed -n 's/def//;s/(//;s/"//g;s/)//p') 
  for i in $DEFINITIONS; do
    writeExample "$INPUT_FILE_NAME.md" $i
  done
}


main $1
