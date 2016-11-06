#!/bin/bash
echo "Compiling Okcash GUI - okcash - from source on its latest version"

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

cd

git clone https://github.com/okcashpro/okcash

cd okcash

qmake

make

strip okcash

cp okcash $HOMEDIR

sudo cp okcash /usr/local/bin

# end Client

echo "Done compiling OK from source: Okcash GUI - okcash - on its latest version for:"
uname -o
echo "enjoy your OK experience"
exit 0