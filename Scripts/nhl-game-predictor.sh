#!/bin/bash
sudo docker stop game-predictor
sudo docker rm game-predictor
cat ~/secrets/github_pat | sudo docker login ghcr.io -u cole-titze --password-stdin
sudo docker pull ghcr.io/cole-titze/nhl-game-predictor:latest
sudo docker run --name game-predictor --env-file ~/secrets/.env-game-predictor -d ghcr.io/cole-titze/nhl-game-predictor:latest