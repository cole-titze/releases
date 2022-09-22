#!/bin/bash
sudo docker stop odds-frontend
sudo docker rm odds-frontend
sudo docker pull ghcr.io/cole-titze/nhl-predictor-frontend-react:latest
sudo docker run --name odds-frontend -p 8081:8081 -d ghcr.io/cole-titze/nhl-predictor-frontend-react:latest