#!/bin/sh

for LINK in $(find node_modules -depth 1 -type l)
do
  (echo $LINK; cd $LINK; git pull && npm install)
done

echo "Main project"
git pull
npm install