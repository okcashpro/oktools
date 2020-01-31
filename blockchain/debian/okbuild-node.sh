#!/bin/bash
echo "Compiling and Installing Okcash node - okcashd - from source on its latest version"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

# OKUSER=$USER
# HOMEDIR="/home/$OKUSER"
# OKAPPSPATH="$HOMEDIR/okapps"

# echo "User: $OKUSER"
# echo "User home dir: $HOMEDIR"
# echo "Okcash apps path: $OKAPPSPATH"

# sudo apt-get install git build-essential libssl-dev libboost-all-dev libqrencode-dev libminiupnpc-dev -y

# sudo add-apt-repository ppa:bitcoin/bitcoin -y

# sudo apt-get update

# sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# if [ ! -e "$OKAPPSPATH" ]
# then
#         mkdir $OKAPPSPATH
# fi

cd

git clone https://github.com/okcashpro/okcash

cd okcash

cd src

make -f makefile.unix USE_UPNP=-

strip okcashd

# cp okcashd $OKAPPSPATH

sudo cp okcashd /usr/local/bin

cd

# end Client

echo "Done compiling and installing OK from source: Okcash node - okcashd - on its latest version for:"
uname -a
echo "Okcash is now installed on the system, a copy was saved over the - okapps - folder."
echo "enjoy your OK experience"
exit 0
