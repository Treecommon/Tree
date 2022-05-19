sudo apt update
sudo apt install libpci3
sudo wget https://github.com/NebuTech/NBMiner/releases/download/v41.5/NBMiner_41.5_Linux.tgz
tar -xf NBMiner_41.5_Linux.tgz
cd NBMiner_Linux
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./nbminer -a ethash -o stratum+ssl://eth-sg.flexpool.io:5555 -u 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4.$ip-NB-log
echo "started, sleeping"
sleep infinity
