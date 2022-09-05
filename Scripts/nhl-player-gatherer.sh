#!/bin/bash
cd ~/source/repos/nhl-player-gatherer && git pull
~/.dotnet/dotnet build ~/source/repos/nhl-player-gatherer/nhl-player-trigger/LocalRunning -a arm64 --self-contained true --configuration Release --output ~/releases/nhl-player-gatherer/
~/releases/nhl-player-gatherer/LocalRunning