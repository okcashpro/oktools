#!/bin/bash
echo "Compiling OK node - okcashd - from source on its latest version"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

# 1. Install dependencies for Okcash
./depsok-node.sh

# 2. Install Berkeley DB 4.8 with apt-get
# cd ..

# chmod +x *

./db48apt.sh

# Clone Okcash repository
cd

git clone https://github.com/okcashpro/okcash

# Build okcashd
cd okcash/src

make -f makefile.unix USE_UPNP=-

strip okcashd

# Install okcashd in the system
sudo cp okcashd /usr/local/bin

mkdir ~/okapps

cp okcashd ~/okapps

# Remove okcash source folder
cd

sudo rm -r okcash

# end Client
echo "Done compiling and installing OK from source: OK Daemon < okcashd > on its latest version for:"
uname -a
echo "A copy of the binary was saved on <okapps> folder in your home directory"
echo "You are now empowered with OK!"
echo "enjoy your OK experience"
exit 0
