#!/bin/bash
DEST=$1
ARCHIVE_URI=https://github.com/linto-ai/linto-command-module/releases/download/v0.1/linto-command-0.1-$ARCH.tar.gz

#Install last version
echo "Downloading module COMMAND..."
wget -P $DEST $ARCHIVE_URI
tar xfz $DEST/${ARCHIVE_URI##*/} -C $DEST
rm $DEST/${ARCHIVE_URI##*/}