#!/bin/bash
echo "installing Okcash dependencies"

date

sudo apt-get install unzip pwgen -y

sudo apt-get install build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

sudo apt-get install qtcreator qttools5-dev-tools  libqt5webkit5-dev 

sudo add-apt-repository -y ppa:bitcoin/bitcoin

sudo apt-get update

sudo apt-get install -y libdb4.8-dev libdb4.8++-dev -y

# end Client

echo "completed setting up the Okcash dependencies for:"
uname -o
echo "enjoy your OK experience"
exit 0