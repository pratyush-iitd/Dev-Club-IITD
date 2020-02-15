#!/bin/sh
set -e
if [ -z "$2" ];
then
ls -lR $1/*.* | wc -l
else
ls -lR "$1"/*"$2" | wc -l
fi
