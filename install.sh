rm .gitattributes README.md
echo "Switching to Debian Testing..."
sudo mv sources.list /etc/apt/sources.list
sudo apt update
sudo apt full-upgrade -y
echo "Installing yt-dlp and dependencies..."
sudo apt install ffmpeg python3 yt-dlp -y
echo "Setting up download scripts..."
sudo mv dl-a /usr/local/bin
sudo mv dl-v /usr/local/bin
sudo chmod u+x /usr/local/bin/dl-a
sudo chmod u+x /usr/local/bin/dl-v
rm install.sh
echo "Setup has finished."
