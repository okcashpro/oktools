#!/bin/bash
echo "Installing the Okcash binaries on its latest version"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHBINS="$HOMEDIR/ok_binaries"

echo "User: $OKUSER"
echo "User home dir: $HOMEDIR"
echo "User Okcash path: $OKCASHBINS"

sudo apt-get install git unzip -y

sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

sudo apt-get install qtcreator qttools5-dev-tools  libqt5webkit5-dev -y

sudo add-apt-repository -y ppa:bitcoin/bitcoin

sudo apt-get update

sudo apt-get install -y libdb4.8-dev libdb4.8++-dev -y

if [ ! -e "$OKCASHBINS" ]
then
        mkdir $OKCASHBINS
fi

cd $OKCASHBINS

DOWNLOADFILE=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep browser_download_url | grep linux64 | head -n 1 | cut -d '"' -f 4)
DOWNLOADNAME=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep name | grep linux64 | head -n 1 | cut -d '"' -f 4)
wget "$DOWNLOADFILE"
unzip "$DOWNLOADNAME"
chmod 755 okcashd
sudo cp okcashd /usr/local/bin
chmod 755 okcash
sudo cp okcash /usr/local/bin
rm $DOWNLOADNAME -y
cd

# end Client

echo "Installed latest Okcash binaries for:"
uname -a
echo "enjoy your OK experience"
exit 0