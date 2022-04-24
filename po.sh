#!/bin/sh
sudo apt update && sudo apt install libpci3
sudo wget https://phoenixminer.info/downloads/PhoenixMiner_6.1b_Linux.tar.gz
tar -xf PhoenixMiner_6.1b_Linux.tar.gz
cd PhoenixMiner_6.1b_Linux
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./PhoenixMiner -pool stratum+ssl://us-eth.2miners.com:2020 -wal 0x3D02F7B8DCB18E778fE35bf8B5A7F91d819bF0C4.$ip -epsw x -mode 1 -Rmode 1 -log 0 -mport 0 -etha 0 -retrydelay 1 -ftime 55 -tt 79 -tstop 89 -asm 2 -allpools 1
