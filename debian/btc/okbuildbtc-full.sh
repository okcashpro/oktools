#!/bin/bash
echo "Compiling Bitcoin Graphical User Interface and node from source on its latest version"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

cd

git clone -b v0.19.0 https://github.com/bitcoin/bitcoin

cd bitcoin

./autogen.sh

./configure CPPFLAGS="-I/usr/local/BerkeleyDB.4.8/include -O2" LDFLAGS="-L/usr/local/BerkeleyDB.4.8/lib" --enable-upnp-default --with-gui

sudo make

sudo make install

cd

# end Client

echo "Done compiling and installing OK from source: Bitcoin GUI and Daemon on its latest version for:"
uname -a
echo "Bitcoin is now installed on the system."
echo "enjoy your OK experience"
exit 0
