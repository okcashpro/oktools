#!/bin/bash
echo "Updating the Okcash binaries on its latest version"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

# OKUSER=$USER
# HOMEDIR="/home/$OKUSER"
# OKCASHBINS="$HOMEDIR/ok_binaries"

# echo "User: $OKUSER"
# echo "User home dir: $HOMEDIR"
# echo "User Okcash path: $OKCASHBINS"

cd

sudo apt-get install curl git unzip -y

# if [ ! -e "$OKCASHBINS" ]
# then
#         mkdir $OKCASHBINS
# fi

# cd $OKCASHBINS

DOWNLOADFILE=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep browser_download_url | grep linux64 | head -n 1 | cut -d '"' -f 4)
DOWNLOADNAME=$(curl -s https://api.github.com/repos/okcashpro/okcash/releases | grep name | grep linux64 | head -n 1 | cut -d '"' -f 4)
wget "$DOWNLOADFILE"
unzip "$DOWNLOADNAME"
chmod 755 okcashd
sudo cp okcashd /usr/local/bin
chmod 755 okcash
sudo cp okcash /usr/local/bin
sudo rm $DOWNLOADNAME
cd

# end Client

echo "Updated latest Okcash binaries for:"
uname -a
echo "Okcash is now Updated on the system."
echo "enjoy your OK experience"
exit 0
