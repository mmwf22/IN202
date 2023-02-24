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
  if getent group "${A_GROUP[i]}"; then
    useradd -g  "${A_GROUP[i]}" -m -s /bin/bash "${A_USERNAME[i]}"
  else
    groupadd "${A_GROUP[i]}"
    useradd -g  "${A_GROUP[i]}" -m -s /bin/bash "${A_USERNAME[i]}"
  fi
  if [ "${A_SUDO[i]}" = Ja ]; then
    usermod -aG sudo "${A_USERNAME[i]}"
  fi
done

