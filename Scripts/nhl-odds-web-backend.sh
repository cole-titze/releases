#!/bin/bash
sudo docker stop coledev/nhl-backend
cd ~/source/repos/nhl-odds-web-backend && git pull
sudo docker build -t coledev/nhl-backend .
sudo docker run -p 8080:80 coledev/nhl-backend