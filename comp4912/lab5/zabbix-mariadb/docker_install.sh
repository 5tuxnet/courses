# To install Docker in your Ubuntu Linux:

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
sudo systemctl enable docker
sudo systemctl start docker

docker --version
docker compose version
