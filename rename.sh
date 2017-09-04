#!/bin/bash


for file in `\find . -maxdepth 4 -name '*.scss'`; do
  name=`basename $file`
  echo ${name}
  dir=`dirname $file`
  mv $file $dir/index.scss
done
