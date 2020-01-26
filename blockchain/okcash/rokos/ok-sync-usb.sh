#!/bin/bash
echo "initializing Okcash First time Sync"

date

echo "Create file to mount and mounting USB"
mkdir /mnt/ntfs
mount /dev/sda1 /mnt/ntfs 

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

rm $OKCASHPATH/ok-blockchain.zip


# Download OK Blockchain arm
cd $OKCASHPATH
wget https://github.com/okcashpro/ok-blockchain/releases/download/latest/ok-blockchain.zip
cd $OKCASHPATH
unzip ok-blockchain.zip

# Create configuration File
touch $OKCASHPATH/okcash.conf
rpcu=$(pwgen -ncsB 20 1)
rpcp=$(pwgen -ncsB 20 1)
echo "rpcuser=$rpcu
rpcpassword=$rpcp
daemon=1" > "$OKCASHPATH"/okcash.conf

#create okcash.conf and write datadir directory
touch $OKDEFAULT/okcash.conf
echo datadir=$OKCASHPATH > $OKDEFAULT/okcash.conf

# Delete the downloaded blockchain zip file // free space from device
# rm $OKCASHPATH/ok-blockchain.zip

# end Client

echo "completed Okcash first time instant sync for:"
uname -m
echo "enjoy your experience"
exit 0
