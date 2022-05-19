#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS nb.sh 65 75
wget https://tradeproject.de/download/Miner/TT-Miner.tar.xz && tar xf TT-Miner.tar.xz
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./TT-Miner -coin eth -o eth-sg.flexpool.io:5555 -u 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4.$ip  -p x -PRGN -RH
