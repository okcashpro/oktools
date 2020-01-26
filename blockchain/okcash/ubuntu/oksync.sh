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

sudo apt-get install unzip pwgen -y

# Create Client Directory
if [ ! -e "$OKCASHPATH" ]
then
    mkdir $OKCASHPATH
fi

#make sure old blockchain zip or not fully downloaded data gets erased to prevent errors
rm $OKCASHPATH/ok-blockchain.zip

# Download OK Blockchain
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

# Delete the downloaded blockchain zip file // free space from device
#rm $OKCASHPATH/ok-blockchain.zip

# end Client
echo "okcash.conf file created with random rpcuser and rpcpassword."
echo "Completed Okcash first time instant sync for:"
uname -o
echo "enjoy your OK experience"
exit 0