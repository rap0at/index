#!/bin/bash

banner(){
clear
printf "\e[0m\n"
printf "\e[1;33m      \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m      \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m     ,_    __,    _   __   __, _|_        \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m    /  |  /  |  |/ \_/  \_/  |  |         \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m       |_/\_/|_/|__/ \__/ \_/|_/|_/       \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m               /|                         \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m               \|                         \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m                                          \e[0m\e[1;32m \e[0m\n"
printf "\e[1;33m                                          \e[0m\e[1;32m \e[0m\n"               
printf "\e[0m\n"
printf "\e[0m\e[1;33m    Created By \e[0m\e[1;31m(\e[0m\e[1;33m RAPOAT \e[0m\e[1;31m)\e[0m\n"


}

menu() {
printf "\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m01\e[0m\e[1;31m]\e[0m\e[1;33m install\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m02\e[0m\e[1;31m]\e[0m\e[1;33m activate\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m00\e[0m\e[1;31m]\e[0m\e[1;33m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Select An Option \e[0m\e[1;96m: \e[0m\e[1;93m\en' option

if [[ $option == 1 || $option == 01 ]]; then
install
elif [[ $option == 2 || $option == 02 ]]; then
activate
elif [[ $option == 0 || $option == 00 ]]; then
sleep 1
printf "\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

install(){
banner
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
fish
sleep 5
apt install tor -y
pkg install tor -y 
apt install nginx -y 
pkg install nginx -y 
sleep 5
service nginx restart 
sleep 5
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit1

if [[ $mainorexit1 == 1 || $mainorexit1 == 01 ]]; then
banner
menu
elif [[ $mainorexit1 == 2 || $mainorexit1 == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}

activate() {
banner
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
sudo service apache2 stop
sudo service nginx restart
sudo service tor restart

xterm -e sudo service nginx status & xterm -e sudo service tor status & leafpad /var/log/nginx/access.log
sleep 5
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit1

if [[ $mainorexit1 == 1 || $mainorexit1 == 01 ]]; then
banner
menu
elif [[ $mainorexit1 == 2 || $mainorexit1 == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
exit 1

elif [ "$x" == "$me" ]; then                 #CONTACT WITH ME                      

clear

echo -e '\e[1;33m

 ,_    __,    _   __   __, _|_ 
/  |  /  |  |/ \_/  \_/  |  |  
   |_/\_/|_/|__/ \__/ \_/|_/|_/
           /|                  
           \| \e[0m


 \e[1;31m
 https://github.com/rap0at
 \e[1;34m



                          Press ENTER to Main Menu
'
read

else 

n


fi

}


banner
menu