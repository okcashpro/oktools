#!/bin/bash
echo "installing the required dependencies for Bitcoin Graphical User Interface and node."
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

sudo apt-get install autoconf libevent-dev libtool libssl-dev libboost-all-dev libminiupnpc-dev git -y

sudo apt-get install qt4-dev-tools libqt4-dev qtchooser libprotobuf-dev protobuf-compiler libqrencode-dev pkg-config -y

wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz

sudo tar -xzvf db-4.8.30.NC.tar.gz

cd db-4.8.30.NC/build_unix

sudo ../dist/configure --enable-cxx

sudo make

sudo make install

export CPATH="/usr/local/BerkeleyDB.4.8/include"

export LIBRARY_PATH="/usr/local/BerkeleyDB.4.8/lib"

# end Client

echo "All the required dependencies for Bitcoin GUI and node are now installed for:"
uname -o
echo "enjoy your OK experience"
exit 0
