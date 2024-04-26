sudo docker image prune -a -f
sudo docker system prune --volumes -f
sudo docker stop -t 600 $(docker ps -a -q)
sudo apt-get update -y && sudo apt-get upgrade -y
sudo reboot