#!/bin/bash
echo "installing the required dependencies for Okcash Graphical User Interface and node."
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

sudo apt-get install unzip pwgen git -y

sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

sudo apt-get install qtcreator qttools5-dev-tools  libqt5webkit5-dev -y

# sudo add-apt-repository ppa:bitcoin/bitcoin -y

# sudo apt-get update

# sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# end Client

echo "All the required dependencies for Okcash GUI and node are now installed for:"
uname -a
echo "enjoy your OK experience"
exit 0
