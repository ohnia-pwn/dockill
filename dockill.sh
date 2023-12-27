#!/bin/bash

# Colores de 8 bits (256 colores)
# Ejemplos de uso: \e[38;5;<n>m donde <n> es el número del color (0-255)
# d -> deep
# l -> light
# i -> intense

# Colores básicos
blackColour="\e[0;30m\033[1m"
redColour="\e[0;31m\033[1m"
greenColour="\e[0;32m\033[1m"
yellowColour="\e[0;33m\033[1m"
blueColour="\e[0;34m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
darkGrayColour="\e[38;5;59m"
orangeColour="\e[38;5;202m"
violetColour="\e[38;5;93m"
pinkColour="\e[38;5;212m"
fuchsiaColour="\e[38;5;200m"
dPurpleColour="\e[38;5;54m"

# Colores claros
lRedColour="\e[38;5;9m"
lGreenColour="\e[38;5;10m"
lYellowColour="\e[38;5;11m"
lBlueColour="\e[38;5;12m"
lPurpleColour="\e[38;5;13m"
lTurquoiseColour="\e[38;5;14m"
lGrayColour="\e[38;5;15m"
lFuchsiaColour="\e[38;5;206m"
lPinkColour="\e[38;5;211m"

# Colores intensos
iBlackColour="\e[0;90m\033[1m"
iRedColour="\e[0;91m\033[1m"
iGreenColour="\e[0;92m\033[1m"
iYellowColour="\e[0;93m\033[1m"
iBlueColour="\e[0;94m\033[1m"
iPurpleColour="\e[0;95m\033[1m"
iTurquoiseColour="\e[0;96m\033[1m"
iGrayColour="\e[0;97m\033[1m"
iPinkColour="\e[38;5;213m"
iFuchsiaColour="\e[38;5;201m"

# Estilos adicionales
boldStyle="\e[1m"
dimStyle="\e[2m"
underlinedStyle="\e[4m"
blinkStyle="\e[5m"
inverseStyle="\e[7m"
hiddenStyle="\e[8m"

# Fin de estilo y color
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
