

git clone https://github.com/graysky2/modprobed-db.git
cd /modeprobed-db
sudo make & sudo make install
modprobed-db store

# Create cron task every hour execute modprobed-db
sudo apt install cronie
crontab -e
clear
echo
echo
echo 'Add this line'
echo '0 */1 * * *   /usr/bin/modprobed-db store &> /dev/null'     #0 */1 * * *   /usr/bin/modprobed-db store &> /dev/null
echo "Press [enter] key to continue. . ."; read enterKey
# Heres the first list of kernel modules.
modprobed-db list

# Exit

