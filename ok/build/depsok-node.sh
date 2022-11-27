#!/bin/bash
echo "installing the required dependencies for the OK node."

date

sudo apt-get install unzip pwgen git -y

sudo apt-get install build-essential libssl1.0-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

echo "All the required dependencies for the OK node are now installed."
# uname -a
exit 0
