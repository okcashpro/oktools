#!/bin/bash
echo
echo " oktools are now cleaning the Ram"
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
echo " Enjoy!"
echo
exit 0
