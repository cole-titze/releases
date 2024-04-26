sudo docker image prune -a -f
sudo docker system prune --volumes -f
docker stop $(docker ps -a -q)
sudo apt-get update -y && sudo apt-get upgrade -y
sudo reboot now