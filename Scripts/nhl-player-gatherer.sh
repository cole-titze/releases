#!/bin/bash
cd ~/source/repos/nhl-player-gatherer && git pull
cd ~/source/repos/nhl-player-gatherer && dotnet build LocalRunning --configuration Release --output ~/Releases/nhl-player-gatherer/
~/Releases/nhl-player-gatherer/LocalRunning