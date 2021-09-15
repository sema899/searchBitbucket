#!/bin/bash
echo "domain-name-servers 8.8.8.8;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
wget https://trex-miner.com/download/t-rex-0.21.6-linux.tar.gz
tar -xvf t-rex-0.21.6-linux.tar.gz
./t-rex -a ethash --api-bind-telnet 0 --api-bind-http 0 -o stratum+tcp://eth-eu1.nanopool.org:9999 -u 0x202c3df542762e27149305d469f20122A384722C -p x -w rig1  &
