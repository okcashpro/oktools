#!/bin/bash
echo "Creating okcash.conf file over the user home folder .okcash"
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

# Create configuration File
touch $OKCASHPATH/okcash.conf
rpcu=$(pwgen -ncsB 20 1)
rpcp=$(pwgen -ncsB 20 1)
echo "rpcuser=$rpcu
rpcpassword=$rpcp
#rpcport=6969
#port=6970
daemon=1
#staking=0
#server=1
#listen=1
#txindex=1
#maxconnections=1024
#timeout=15000" > "$OKCASHPATH"/okcash.conf

# end Client
echo "okcash.conf file created with random rpcuser and rpcpassword."
echo "enjoy your OK experience"
exit 0