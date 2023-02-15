#!/bin/bash
INPUT=users.csv
declare -a A_USERNAME
declare -a A_GROUP
declare -a A_SUDO
declare administrator=0

echo $A_GROUP
echo $A_USERNAME
echo $administrator

while IFS=,read COL1,COL2,COL3; do
    A_USERNAME+=("$COL1")
    A_GROUP+=("$COL2")
    A_SUDO+=("$COL3")
    echo name
    echo group

done<"$INPUT"


: '
while IFS=,read -r  name group; do
    A_USERNAME+=("$COL1")
    A_GROUP+=("$COL2")
    echo COL1
    echo COL2
done<"$MY_INPUT"
'

