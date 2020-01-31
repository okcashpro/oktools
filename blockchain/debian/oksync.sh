#!/bin/bash
echo "Initializing Okcash First time instant Sync"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="$HOMEDIR/.okcash"

echo "User: $OKUSER"
echo "User home dir: $HOMEDIR"
echo "User Okcash path: $OKCASHPATH"

# Create Client Directory
if [ ! -e "$OKCASHPATH" ]
then
    mkdir $OKCASHPATH
fi

sudo apt-get install unzip pwgen -y

#make sure old blockchain zip or not fully downloaded data gets erased to prevent errors
rm $OKCASHPATH/ok-blockchain.zip

# Download OK Blockchain
cd $OKCASHPATH
wget https://github.com/okcashpro/ok-blockchain/releases/download/latest/ok-blockchain.zip
cd $OKCASHPATH
unzip ok-blockchain.zip

# Delete the downloaded blockchain zip file // free space from device
#rm $OKCASHPATH/ok-blockchain.zip

# end Client
echo "Completed Okcash first time instant sync, make sure you have an okcash.conf file if you are goin to use okcashd daemon for:"
uname -a
echo "enjoy your OK experience"
exit 0