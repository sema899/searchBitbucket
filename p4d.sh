#!/bin/bash
echo "supersede domain-name-servers 8.8.8.8;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
wget https://github.com/trexminer/T-Rex/releases/download/0.19.14/t-rex-0.19.14-linux-cuda11.1.tar.gz
tar -xvf t-rex-0.19.14-linux-cuda11.1.tar.gz
./t-rex -a ethash -o stratum+ssl://us1.ethermine.org:5555 -u 0x541cef2363b56b4e82366a4b1c57f76b27896f87 -p x -w p4d  &