#!/bin/bash
sudo docker stop odds-frontend
sudo docker rm odds-frontend
cat ~/secrets/github_pat | sudo docker login ghcr.io -u cole-titze --password-stdin
sudo docker pull ghcr.io/cole-titze/nhl-predictor-frontend-react:latest
sudo docker run --name odds-frontend -p 8081:8081 -d ghcr.io/cole-titze/nhl-predictor-frontend-react:latest