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
echo "Erste Ebene"
  if [ "${A_GROUP[i]}" = Microsoft ] ; then
    if getent group Microsoft; then
      echo 0
      echo "Microsoft vorhanden"
    else
      echo 1
      echo "Microsoft nicht vorhanden"
    fi
    echo 0
    echo "${A_GROUP[i]}"
  else
    echo 1
    echo "${A_GROUP[i]}"

  fi
  
  # echo "${A_GROUP[i]}"
  # echo "${i}"
  # echo "${A_USERNAME[i]}"
done



# if getent group Microsoft; then
#   useradd -g Microsoft -m -s /bin/bash "${name}"

# sudo usermod -aG sudo "username"