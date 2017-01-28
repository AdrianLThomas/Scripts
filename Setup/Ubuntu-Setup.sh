#!/bin/sh

# Add Keys
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# Add Repositories
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# Install Apps
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade
sudo apt-get -y install \
	git \
	google-chrome-stable \
	mpv \
	pinta \
	redshift \
	redshift-gtk \
	spotify-client \
	virtualbox

# To automate at a later date:
# nVidia Drivers
# CrashPlan - Need to configure engine start https://support.code42.com/CrashPlan/4/Troubleshooting/Stopping_And_Starting_The_CrashPlan_Service
# Spotify - apply this fix: https://www.reddit.com/r/spotify/comments/3cear9/linux_spotify_scaling/
# VS Code - https://code.visualstudio.com/docs/?dv=linux64_deb
# Steam-Launcher
