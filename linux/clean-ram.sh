#!/bin/bash
echo
echo " Cleaning the Ram by ROKOS v7 core System"
echo
echo " Ram being used by the system before clean up"
echo
free -m
echo
echo " Erasing Ram"
echo
sync; echo 3 | sudo tee /proc/sys/vm/drop_caches
echo
echo " Ram being used by the system after clean up"
echo
free -m
echo
echo " Njoy your system!"
echo
exit 0
