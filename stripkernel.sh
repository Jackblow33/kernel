#!/bin/bash

#Modprobed-db
#https://wiki.archlinux.org/title/Modprobed-db
#https://github.com/graysky2/modprobed-db?tab=readme-ov-file
sudo pacman -S modprobed-db #yay modprobed-db
modprobed-db --version  #check if working and create database file
#sudo nano /home/$USER/.config/modprobed.db
modprobed-db store


#cron task to run 'modprobed-db store' every hour using cronie
sudo pacman -Su cronie
clear
echo
echo
echo
echo '########################'
echo 'C/P the following line #'
echo '########################'
echo
echo '0 */1 * * *   /usr/bin/modprobed-db store &> /dev/null'
echo
read -p "Press enter to enter nano and paste the line into it............................>>>"
export EDITOR=nano   #change from default vi editor to nano
crontab -e
#cat /home/$USER/.config/modprobed.db
