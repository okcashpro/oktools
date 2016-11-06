#!/bin/bash
echo "Installing the Okcash binaries for Ubuntu 14 on its latest version"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="$HOMEDIR/.okcash"

echo "User: $OKUSER"
echo "User home dir: $HOMEDIR"
echo "User Okcash path: $OKCASHPATH"

sudo apt-get install unzip pwgen -y

sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

sudo apt-get install qtcreator qttools5-dev-tools  libqt5webkit5-dev -y

sudo add-apt-repository -y ppa:bitcoin/bitcoin

sudo apt-get update

sudo apt-get install -y libdb4.8-dev libdb4.8++-dev -y

DOWNLOADFILE=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep browser_download_url | grep linux64 | head -n 1 | cut -d '"' -f 4)
DOWNLOADNAME=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep name | grep linux64 | head -n 1 | cut -d '"' -f 4)
sudo wget "$DOWNLOADFILE"
sudo unzip "$DOWNLOADNAME"
sudo chmod 755 okcashd
sudo cp okcashd /usr/local/bin
sudo chmod 755 okcash
sudo cp okcash /usr/local/bin

# end Client

echo "Installed latest Okcash binaries for:"
uname -o
echo "enjoy your OK experience"
exit 0