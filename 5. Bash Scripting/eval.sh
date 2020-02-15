#!/bin/sh
j=0
ans=0
ans1=0
while read -r u
do
  for word in $u
  do
    array[j]=$word
    ((j+=1))
    #echo $word
  done

done < "$1"

j=0
for i in ${array[@]}
do
  #echo $ans1
  #echo $ans
  #echo ${array[j]}
  tmp=${array[j]}
  #echo $tmp
  #echo "$i"
  case $i in
    +)
      #echo +
      ans1=$((tmp + ans))
      ((j+=2))
    ;;

    -)
      #echo -
      ans1=$(( ans - tmp ))
      ((j+=2))
    ;;

    '*')
      #echo "*"
      ans1=$(( ans * tmp ))
      ((j+=2))
    ;;

    /)
      #echo /
      ans1=$(( ans / tmp ))
      ((j+=2))
    ;;
  esac
ans=$ans1

done


echo Thus the answer is "$ans1"
