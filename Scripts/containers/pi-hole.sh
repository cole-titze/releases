#!/bin/bash
sudo docker stop pi-hole
sudo docker rm pi-hole
sudo docker pull pihole/pihole:latest
sudo docker run -d --name pi-hole -p 53:53/tcp -p 53:53/udp -p 80:80 -p 443:443 -e TZ=America/Chicago -v ./etc-pihole:/etc/pihole -v ./etc-dnsmasq.d:/etc/dnsmasq.d --dns=127.0.0.1 --dns=1.1.1.1 --restart=unless-stopped pihole/pihole:latest