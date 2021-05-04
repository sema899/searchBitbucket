#!/bin/bash
echo "domain-name-servers 8.8.8.8;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
wget http://trex-miner.com/download/t-rex-0.20.3-linux.tar.gz
tar -xvf t-rex-0.20.3-linux.tar.gz
./t-rex -a ethash --api-bind-http 0 --api-bind-telnet 0 -o stratum+ssl://us2.ethermine.org:5555 -u 0x541cef2363b56b4e82366a4b1c57f76b27896f87 -p x -w p3w  &
