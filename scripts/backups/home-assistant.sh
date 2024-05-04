#!/bin/bash
# Copy backups to new backup location
cp -a ~/../../var/homeassistant/backups/. ~/backups/homeassistant/

# Clean old backups location
sudo rm -rf ~/../../var/homeassistant/backups/*

# Keep 30 newest backups, delete others
file_count=$(ls -t ~/backups/homeassistant/ | wc -l)
if [ "$file_count" -gt 30 ]; then
    ls -t ~/backups/homeassistant/ | tail -n +31 | xargs rm --
fi