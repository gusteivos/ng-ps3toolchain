#!/bin/sh -e
# ps3libraries.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
${WGET:-wget -4} --no-check-certificate https://github.com/gusteivos/ng-ps3libraries/tarball/master -O ps3libraries.tar.gz

## Unpack the source code.
rm -Rf ps3libraries && mkdir ps3libraries && tar --strip-components=1 --directory=ps3libraries -xvzf ps3libraries.tar.gz && cd ps3libraries

## Compile and install.
./libraries.sh
