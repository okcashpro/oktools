#!/bin/bash
echo "installing the required dependencies for the OK Graphical User Interface and node."

date

sudo apt-get install unzip pwgen git -y

sudo apt-get install build-essential libssl1.0-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

sudo apt-get install qtcreator qttools5-dev-tools  libqt5webkit5-dev qt5-default -y

echo "All the required dependencies for the OK Graphical User Interface and node are now installed."
# uname -a
exit 0
