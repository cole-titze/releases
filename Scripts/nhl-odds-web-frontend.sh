#!/bin/bash
sudo docker stop odds-frontend
sudo docker pull ghcr.io/cole-titze/nhl-odds-web-frontend:latest
sudo docker run --name odds-frontend -p 8081:8081 --restart=always -d ghcr.io/cole-titze/nhl-odds-web-frontend:latest
