#!/bin/bash
echo "installing DB4.8 from apt"

date

sudo apt-get install software-properties-common

sudo add-apt-repository ppa:bitcoin/bitcoin -y

sudo apt-get update

sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# end Client
echo "DB4.8 is now installed for this system"
# uname -a
exit 0
