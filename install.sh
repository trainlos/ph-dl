#!/bin/bash
echo "Switching to Debian testing..."
sudo cp sources.list /etc/apt/sources.list
sudo apt update
sudo apt full-upgrade -y
echo "Installing yt-dlp and dependencies..."
sudo apt install ffmpeg python3 yt-dlp -y
echo "Setting up download script..."
sudo cp ph-dl /usr/local/bin
sudo chmod u+x /usr/local/bin/ph-dl
echo "Setup has finished. These files can now be deleted."
