#!/bin/bash
sudo docker stop data-getter
sudo docker rm data-getter
sudo docker pull ghcr.io/cole-titze/nhl-data-getter:latest
sudo docker run --name data-getter --env-file ~/secrets/.env-data-getter -d ghcr.io/cole-titze/nhl-data-getter:latest
