#!/bin/bash
sudo docker stop data-cleaner
sudo docker pull ghcr.io/cole-titze/nhl-data-cleaner:latest
sudo docker run --name data-cleaner --env-file ~/secrets/.env-data-cleaner -d ghcr.io/cole-titze/nhl-data-cleaner:latest