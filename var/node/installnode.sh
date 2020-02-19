#!/bin/bash
echo "Installing Node.js 12.x, you Rock!"
cd
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y
echo "Done installing Node.js
exit 0
