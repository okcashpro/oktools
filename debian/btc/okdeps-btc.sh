#!/bin/bash
echo "installing the required dependencies for Bitcoin Graphical User Interface and node."
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

sudo apt-get install unzip pwgen git -y

sudo apt-get install autoconf libevent-dev libtool libssl-dev libboost-all-dev libminiupnpc-dev -y

sudo apt-get install qt4-dev-tools libqt4-dev qtchooser libprotobuf-dev protobuf-compiler libqrencode-dev pkg-config -y

# sudo add-apt-repository ppa:bitcoin/bitcoin -y

# sudo apt-get update

# sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# end Client

echo "All the required dependencies for Bitcoin GUI and node are now installed for:"
uname -a
echo "enjoy your OK experience"
exit 0
