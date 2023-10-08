pwd
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
sudo wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install grafana
sudo /bin/systemctl status grafana-server
sudo /bin/systemctl enable grafana-server
sudo /bin/systemctl start grafana-server
sudo /bin/systemctl status grafana-server
mkdir grafana-config
cd grafana-config/
wget https://raw.githubusercontent.com/grafana/loki/v2.8.0/cmd/loki/loki-local-config.yaml -O loki-config.yaml
ls
cat loki-config.yaml 
docker run -d --name loki -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:2.8.0 --config.file=/mnt/config/loki-config.yaml
sudo apt install docker.io
docker run -d --name loki -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:2.8.0 --config.file=/mnt/config/loki-config.yaml
sudo chown $USER /var/run/docker.sock
docker run -d --name loki -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:2.8.0 --config.file=/mnt/config/loki-config.yaml
wget https://raw.githubusercontent.com/grafana/loki/v2.8.0/clients/cmd/promtail/promtail-docker-config.yaml -O promtail-config.yaml
ls
cat promtail-config.yaml 
docker run -d --name promtail -v $(pwd):/mnt/config -v /var/log:/var/log --link loki grafana/promtail:2.8.0 --config.file=/mnt/config/promtail-config.yaml
docker ps
ls
cat loki-config.yaml 
cat promtail-config.yaml 
cd /var/log/
ls
cd grafana/
ls
cat grafana.log 
pwd
cd /home/ubuntu/grafana-config/
ls
sudo vim promtail-config.yaml 
docker ps
docker restart 61e54141ab37
docker ps
sudo apt install ngnix
sudo apt install nginx
cd /var/log/nginx/
ls
cat access.log 
ls
cat error.log 
pwd
cd /home/ubuntu/grafana-config/
ls
vim promtail-config.yaml 
/var/log/nginx
vim promtail-config.yaml 
docker ps
docker restart 61e54141ab37
vim promtail-config.yaml 
docker restart 61e54141ab37
vim promtail-config.yaml 
cd /var/log/
ls
cd nginx/
ls
vim promtail-config.yaml 
cd /home/ubuntu/grafana-config/
vim promtail-config.yaml 
docker ps
docker image
docker images
docker restart b062beaf992b
docker run -d b062beaf992b
docker ps
docker run -d b062beaf992b --name grafana/promtail:2.8.0
docker ps
docker restart 9d9787a68531
ls
cat grafana-config/
cd grafana-config/
cat promtail-config.yaml 
vim promtail-config.yaml 
docker restart
docker ps
chown $USER /var/run/docker.sock
sudo chown $USER /var/run/docker.sock
docker ps
docker images
docker restart b062beaf992b 6723a4d27412
docker run -d b062beaf992b 6723a4d27412
docker ps
docker run  b062beaf992b 6723a4d27412
docker run -d --name loki -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:2.8.0 --config.file=/mnt/config/loki-config.yaml
cd grafana-config/
docker ps
sudo chown $USER /var/run/docker.sock
docker ps
docker-compose up
sudo apt install docker-compose
docker-compose up
docker stop
docker start
docker restart
