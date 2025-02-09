#!/bin/bash

clear
apt update -y
apt upgrade -y
apt install toilet -y
apt install figlet -y
apt install lolcat -y
apt install nano -y

figlet -f big "Tamam!" | lolcat
echo -e "\nŞimdi Termux'u kapatıp tekrar açın!"
