#!/bin/bash
echo "Starting the Seeder, you Rock!"
cd
cd coin-seeder
screen ./dnsseed -h dns1.domain.com -n vps.domain.com -m admin@domain.com -p 5353
exit 0
