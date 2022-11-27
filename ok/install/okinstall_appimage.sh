#!/bin/bash
echo "Updating the Okcash binaries on its latest version"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

sudo apt-get install git curl -y

# Download the OK Wallet AppImage for Linux
cd
DOWNLOADFILE=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep browser_download_url | grep _x86_64 | head -n 1 | cut -d '"' -f 4)
DOWNLOADNAME=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep name | grep _x86_64 | head -n 1 | cut -d '"' -f 4)
wget "$DOWNLOADFILE"
chmod +x "$DOWNLOADNAME"
mkdir ~/okapps
mv "$DOWNLOADNAME" ~/okapps

# end Client
echo "Upgraded to the latest OK AppImage"
uname -a
echo "Okcash GUI + node are now Updated on the system."
echo "The OK AppImage file  was saved on the <okapps> folder in your home directory"
echo "enjoy your OK experience"
exit 0