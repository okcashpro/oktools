#!/bin/bash
echo "installing DB4.8 from apt"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

sudo add-apt-repository ppa:bitcoin/bitcoin -y

sudo apt-get update

sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# end Client

echo "DB4.8 is now installed for:"
uname -a
echo "enjoy your OK experience"
exit 0
