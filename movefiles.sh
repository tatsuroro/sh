#!/bin/bash


for file in `\find . -maxdepth 1 -type f`; do
  name=`basename $file .js`
  mkdir ${name}
  mv $file ./${name}/index.js
done
