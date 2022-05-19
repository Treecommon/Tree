#!/bin/sh
sudo apt update
sudo apt install libpci3
sudo apt install libnvrtc.so
sudo apt install libnvrtc-builtins.so
wget https://github.com/bzminer/bzminer/releases/download/v8.0.0/bzminer_v8.0.0_linux_cuda_tk.tar.gz && tar xvf bzminer_v8.0.0_linux_cuda_tk.tar.gz && chmod +x bzminer && ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p stratum+ssl://eth-hk.flexpool.io:5555 stratum+ssl://eth-sg.flexpool.io:5555 -r $ip-New --nvidia 1
