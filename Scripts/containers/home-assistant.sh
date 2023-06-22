#!/bin/bash
sudo docker stop pi-hole
sudo docker rm pi-hole
sudo docker pull homeassistant/raspberrypi4-homeassistant:latest
sudo docker run -d --name home-assistant --restart=always -v /var/homeassistant:/config --network host homeassistant/raspberrypi4-homeassistant