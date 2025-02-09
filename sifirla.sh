#!/bin/bash

# Mevcut banner dosyalarını kaldır
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/zshrc

# Termux'u varsayılana döndür
apt remove toilet figlet lolcat nano -y
apt autoremove -y
apt update -y
apt upgrade -y

echo "Sıfırlama tamamlandı. Termux'u yeniden başlatın!"
