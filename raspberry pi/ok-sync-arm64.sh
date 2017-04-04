#!/bin/bash

echo "initializing Okcash First time Sync"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="$HOMEDIR/.okcash"

echo "User: $OKUSER"
echo "User home dir: $HOMEDIR"
echo "User Okcash path: $OKCASHPATH"

sudo apt-get install unzip pwgen -y

# Create Client Directory
if [ ! -e "$OKCASHPATH" ]
then
    mkdir $OKCASHPATH
fi

rm $OKCASHPATH/ok-blockchain-arm64.zip


# Download OK Blockchain arm64
cd $OKCASHPATH
wget https://github.com/okcashpro/ok-blockchain-iot/releases/download/latest/ok-blockchain-arm64.zip
cd $OKCASHPATH
unzip ok-blockchain-arm64.zip

# Create configuration File
touch $OKCASHPATH/okcash.conf
rpcu=$(pwgen -ncsB 20 1)
rpcp=$(pwgen -ncsB 20 1)
echo "rpcuser=$rpcu
rpcpassword=$rpcp
daemon=1" > "$OKCASHPATH"/okcash.conf

# Delete the downloaded blockchain zip file // free space from device
#rm $OKCASHPATH/ok-blockchain-arm64.zip

# end Client

echo "completed Okcash first time instant sync for:"
uname -m
echo "enjoy your experience"
exit 0