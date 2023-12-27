#!/bin/bash

iRedColour="\e[0;91m\033[1m"
iGreenColour="\e[0;92m\033[1m"

endStyle="\033[0m"

declare -a contenedores=();

contenedores=( $(docker ps -a -q) )
ncont=$((${#contenedores[@]}-1))

echo -e "\n"

for i in $(seq 0 $ncont); do
  docker rm ${contenedores[$i]} --force &>/dev/null
  echo -e "${iRedColour}${contenedores[$i]} STOPED${endStyle}"
done

echo -e "\n${iGreenColour}Done.${endStyle}"
