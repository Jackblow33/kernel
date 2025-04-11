#!/bin/bash

KERNEL=6.14.1-tkg-eevdf

#cd /home/jack/linux-tkg/DEBS
sudo mkdir /mnt/usb
#lsblk
sudo mount /dev/sdd1 /mnt/usb   #choose appropriate path
cd /mnt/usb/_MyFiles/kernels/'6.14-1 tkg'
sudo dpkg -i *.deb

# In case your system is not booting to the new kernel, you can update initramfs and your GRUB configuration manually
#sudo update-initramfs -c -k $KERNEL
#sudo update-grub
