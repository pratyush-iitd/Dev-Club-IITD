#!/bin/sh
IFS=':'
diff -qr $1/ $2/ > out.txt
echo "files synced are"
while read -r u v
do
  echo $v
done < out.txt
#git diff --no-index $1/ $2/
rsync -a $1/ $2/
rsync -a $2/ $1/
