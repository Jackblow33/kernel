#!/bin/bash

KERNEL=6.14.1-tkg-eevdf

cd /home/jack/linux-tkg/DEBS
sudo dpkg -i *.deb

sudo update-initramfs -c -k $KERNEL
sudo update-grub
