#!/bin/bash

echo "Mounting your USB device"

mkdir /mnt/ntfs
mount /dev/sda1 /mnt/ntfs

echo "initializing Okcash First time Sync"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="/mnt/ntfs"
OKDEFAULT="$HOMEDIR/.okcash"
echo "User: $OKUSER"
echo "User home dir: $HOMEDIR"
echo "User Okcash path: $OKCASHPATH"

sudo apt-get install unzip pwgen -y

# Create Client Directory
if [ ! -e "$OKCASHPATH" ]
then
    mkdir $OKCASHPATH
fi

rm $OKCASHPATH/ok-blockchain-arm.zip


# Download OK Blockchain arm
cd $OKCASHPATH
wget https://github.com/okcashpro/ok-blockchain-iot/releases/download/latest/ok-blockchain-arm.zip
cd $OKCASHPATH
unzip ok-blockchain-arm.zip

# Create configuration File
touch $OKCASHPATH/okcash.conf
rpcu=$(pwgen -ncsB 35 1)
rpcp=$(pwgen -ncsB 75 1)
echo "rpcuser=$rpcu
rpcpassword=$rpcp
daemon=1" > "$OKCASHPATH"/okcash.conf


#Adds okcash.conf to default derectory and gives new $OKCASHPATH
touch $OKDEFAULT/okcash.conf
echo datadir=$OKCASHPATH > $OKDEFAULT/okcash.conf

# Delete the downloaded blockchain zip file // free space from device
rm $OKCASHPATH/ok-blockchain-arm.zip

# end Client

echo "completed Okcash first time instant sync for:"
uname -m
echo "enjoy your experience"
exit 0
