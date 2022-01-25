#!/bin/bash
#Autor: Samsepion
#Colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

figlet sesmux

trap ctrl_c INT

function ctrl_c(){
        echo -e "\n${redColour}[!] Saliendo...\n${endColour}"
        tput cnorm; exit 1
}

echo -e "\n${purpleColour}[-] Esta es tu ip privada:  \n${endColour}"
ip= ifconfig | awk '/inet/' | head -n 1| awk '{print$2}'

echo -e "\n${greenColour}[-] Esta es tu ip en THB:  \n${endColour}"
iphtb= ifconfig | awk '/inet 10/' | awk '{print$2}'

echo -e "\n${blueColour}[*] Introduce el nombre de la sesión de tmux: \n${endColour}"
read tmuxname
tmux new -s $tmuxname

