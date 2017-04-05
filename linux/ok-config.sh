echo "Configuring the okcash.conf file"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="$HOMEDIR/.okcash"

# Create configuration File
touch $OKCASHPATH/okcash.conf
rpcu=$(pwgen -ncsB 20 1)
rpcp=$(pwgen -ncsB 20 1)
echo "rpcuser=$rpcu
rpcpassword=$rpcp
daemon=1" > "$OKCASHPATH"/okcash.conf