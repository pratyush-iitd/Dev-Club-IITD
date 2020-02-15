#!/bin/sh
IFS=':'
while read -r u v x y z r s
do
   
    if [[ $u = "$2" ]];
    then
    a="success"
    echo "fullname is : $z"
    else :
    fi

  
done < "$1"

if [[ -z "$a" ]];
then
echo "username not found"
else :
fi

