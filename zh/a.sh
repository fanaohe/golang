#!/bin/sh
function ergodic(){
  for fullname in `ls $1`
  do
    name=${fullname%.*}
    ext=${fullname##*.}
    if [ "$ext"x = "md"x ]
    then
      echo $name
      pandoc -V mainfont="SimSun" $name.md -o $name.html
    fi
  done
}
 
IFS=$'\n'
INIT_PATH=".";
ergodic $INIT_PATH
