#!/bin/bash
A_USERNAME={}
A_GROUP={}
A_SUDO={}
while IFS=',' read -ra array; do
  A_USERNAME+=("${array[0]}")
  A_GROUP+=("${array[1]}")
  A_SUDO+=("${array[2]}")
done < users.csv

for i in "${!A_USERNAME[@]}"; do
    userdel -r "${A_USERNAME[i]}"
    groupdel "${A_GROUP[i]}"

    echo i
    echo "$i"
    echo "${A_GROUP[i]}"
    echo "${A_USERNAME[i]}"
done