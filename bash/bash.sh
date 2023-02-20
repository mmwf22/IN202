#!/bin/bash
# for (( counter=10; counter>0; counter-- ))
# do
# echo -n "$counter "
# done
# printf "\n"


# while read -r line
# do
#    echo "Record is : $line"
# done < users.csv

while IFS=';' read -ra array; do
  A_USERNAME+=("${array[0]}")
  echo "${array[0]}"
  A_GROUP+=("${array[1]}")
  echo "${array[1]}"
  A_SUDO+=("${array[2]}")
  echo "${array[2]}"
done < users.csv                                                       

echo "${A_USERNAME[@]}"  
echo "${A_GROUP[@]}"
echo "${A_SUDO[@]}"