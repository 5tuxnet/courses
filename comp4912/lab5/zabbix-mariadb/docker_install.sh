# To install Docker in your Ubuntu Linux:

sudo apt-get update
sudo apt-get install docker.io docker-compose -y
sudo systemctl enable docker
sudo systemctl start docker

docker --version
docker compose version
