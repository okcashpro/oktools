#!/bin/bash
echo "Compiling Okcash Daemon - okcashd - from source on its latest version"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="$HOMEDIR/.okcash"

echo "User: $OKUSER"
echo "User home dir: $HOMEDIR"
echo "User Okcash path: $OKCASHPATH"

sudo apt-get install unzip pwgen -y

sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

sudo add-apt-repository -y ppa:bitcoin/bitcoin

sudo apt-get update

sudo apt-get install -y libdb4.8-dev libdb4.8++-dev -y

cd

git clone https://github.com/okcashpro/okcash

cd okcash

cd src

make -f makefile.unix USE_UPNP=-

strip okcashd

cp okcashd $HOMEDIR

sudo cp okcashd /usr/local/bin

# end Client

echo "Done compiling OK from source: Okcash Daemon - okcashd - on its latest version for:"
uname -o
echo "enjoy your OK experience"
exit 0