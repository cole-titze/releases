#!/bin/bash
sudo docker stop zigbee2mqtt
sudo docker rm zigbee2mqtt
sudo docker pull koenkk/zigbee2mqtt
sudo docker run --name zigbee2mqtt --restart=unless-stopped --device /dev/serial/by-id/usb-Nabu_Casa_SkyConnect_v1.0_fe6d7d84ab9ced1199c57ffaa7669f5d-if00-port0:/dev/ttyACM0 -p 8084:8080 -v /z2m/data:/app/data -v /run/udev:/run/udev:ro -e TZ=US/Central koenkk/zigbee2mqtt