#!/bin/bash
sudo docker stop home-assistant
sudo docker rm home-assistant
sudo docker pull homeassistant/raspberrypi4-homeassistant:latest
sudo docker run -d --name home-assistant --restart=always -v /var/homeassistant:/config --network host homeassistant/raspberrypi4-homeassistant