#!/bin/bash
echo
echo " oktools are now checking the Ram"
echo
sudo dmidecode --type memory | less
echo
echo
exit 0
