#!/bin/bash
sudo docker stop odds-getter
sudo docker rm odds-getter
cat ~/secrets/github_pat | sudo docker login ghcr.io -u cole-titze --password-stdin
sudo docker pull ghcr.io/cole-titze/vegas-odds-getter:latest
sudo docker run --name odds-getter --env-file ~/secrets/.env-vegas-getter -d ghcr.io/cole-titze/vegas-odds-getter:latest