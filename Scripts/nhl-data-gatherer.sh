#!/bin/bash
cd ~/source/repos/nhl-data-gatherer && git pull
cd ~/source/repos/nhl-data-gatherer && nhl-data-gatherer dotnet build LocalRunning --configuration Release --output ~/Releases/nhl-data-gatherer/
~/Releases/nhl-data-gatherer/LocalRunning