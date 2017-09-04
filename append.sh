#!/bin/bash

for file in `\find . -maxdepth 4 -type f`; do
  name=`basename $file`
  gsed -i "2iimport cssModules from 'react-css-modules';\nimport styles from './index.scss';" $file
done
