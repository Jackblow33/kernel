

git clone https://github.com/graysky2/modprobed-db.git
cd /modeprobed-db
sudo make & sudo make install
modprobed-db store

# Create cron task every hour execute modprobed-db
sudo apt install cronie
crontab -e
# Add this line
0 */1 * * *   /usr/bin/modprobed-db store &> /dev/null

# Heres the first list of kernel modules.
modprobed-db list

# Exit

