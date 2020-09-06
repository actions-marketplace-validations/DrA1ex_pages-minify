#!/bin/sh -l

npm i minify -g
sudo apt-get install moreutils

cd /app/

find . -type f \( -iname \*.html -o -iname \*.js -o -iname \*.css \) | while read fname
    do
    minify ${fname} | sponge ${fname}
    done