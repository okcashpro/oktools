#!/bin/bash
echo "Installing the Okcash node on its latest version for Ubuntu 16"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

# OKUSER=$USER
# HOMEDIR="/home/$OKUSER"
# OKCASHBINS="$HOMEDIR/ok_binaries"

# echo "User: $OKUSER"
# echo "User home dir: $HOMEDIR"
# echo "User Okcash path: $OKCASHBINS"

cd

sudo apt-get install git curl unzip -y

sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

#sudo apt-get install qtcreator qttools5-dev-tools  libqt5webkit5-dev -y

sudo add-apt-repository ppa:bitcoin/bitcoin -y

sudo apt-get update

sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# if [ ! -e "$OKCASHBINS" ]
# then
#         mkdir $OKCASHBINS
# fi

# cd $OKCASHBINS

DOWNLOADFILE=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep browser_download_url | grep buntu16 | head -n 1 | cut -d '"' -f 4)
DOWNLOADNAME=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep name | grep buntu16 | head -n 1 | cut -d '"' -f 4)
wget "$DOWNLOADFILE"
unzip "$DOWNLOADNAME"
chmod 755 okcashd
sudo cp okcashd /usr/local/bin
#chmod 755 okcash
#sudo cp okcash /usr/local/bin
sudo rm $DOWNLOADNAME
cd

# end Client

echo "Installed latest Okcash node for:"
uname -a
echo "Okcash is now installed on the system, a copy of the binaries was saved in your home folder."
echo "enjoy your OK experience"
exit 0
