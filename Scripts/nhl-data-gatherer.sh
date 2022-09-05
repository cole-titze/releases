#!/bin/bash
cd ~/source/repos/nhl-data-gatherer && git pull
~/.dotnet/dotnet build ~/source/repos/nhl-data-gatherer/LocalRunning -a arm64 --self-contained true --configuration Release --output ~/releases/nhl-data-gatherer/
~/releases/nhl-data-gatherer/LocalRunning