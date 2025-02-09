#!/bin/bash

clear
toilet -f big "Kurulum" -F gay | lolcat

# Kullanıcıdan banner metni al
echo -e "\nSenin Banner Adın Ne? :"
read varbanner

# Gradyan seçeneklerini göster
echo -e "\nGradyan Seçiniz:"
echo "1) Kırmızı  2) Turuncu  3) Sarı  4) Yeşil  5) Mavi  6) Mor"
read -p "Seçiminizi girin (1-6): " COLOR_CHOICE

# Gradyan kodları
GRADIENTS=("196" "202" "226" "46" "51" "129")

# Seçim kontrolü (Geçersizse varsayılan kırmızı)
if [[ $COLOR_CHOICE -ge 1 && $COLOR_CHOICE -le 6 ]]; then
    SELECTED_COLOR=${GRADIENTS[$COLOR_CHOICE-1]}
else
    echo "Geçersiz seçim! Varsayılan olarak Kırmızı seçildi."
    SELECTED_COLOR="196"
fi

# Banner'ı oluştur
echo "toilet -f big '$varbanner' -F border | lolcat --truecolor --freq=0.5 --color=$SELECTED_COLOR" > banner.txt
echo "clear" > temizle.txt

# Banner'ı Termux başlangıcına ekle
cat "temizle.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "banner.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

# Kurulum tamamlandı mesajı
figlet -f big "Kurulum Tamamlandı!" | lolcat
echo -e "\nTermux'u kapatıp tekrar açın!"
