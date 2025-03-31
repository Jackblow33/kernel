
#ldkernelmod.sh


#lm-sensors
sudo pacman -Su lm_sensors
sensors-detect
sensors

#Install Thermal Monitor (Plasma applet) AKA: Thermal Monitor
#https://invent.kde.org/olib/thermalmonitor
#KDE ONLY!!!
#Install from KDE store: https://store.kde.org/p/2100418
sudo mkdir -p /home/$USER/github/others
sudo chmod -R 777 /home/$USER/github    # -r-w-x to the directory, subdirectories and files
cd /home/$USER/github/others
sudo git clone https://invent.kde.org/olib/thermalmonitor.git
systemctl restart --user plasma-plasmashell.service   #Restart Plasma after install
#how to configure: https://www.youtube.com/watch?v=7z1QtepdrT4


