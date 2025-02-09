clear

toilet -f big "Kurulum" -F gay | lolcat

echo -e "
Senin Banner Adın Ne? :
"
read varbanner

echo

echo -e "
Ejderha ne demesini istiyorsun? :
 "
read varejder

echo  "cowsay -f dragon "$varejder" | lolcat" > ejder.txt
echo "toilet -f big ' $varbanner' -F gay | lolcat" > banner.txt
echo
echo "clear" > temizle.txt
cat "ejder.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "temizle.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
ls
cat "banner.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cowsay -f dragon "Kurulum Tamam!, exit yaz." | lolcat
