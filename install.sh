rm .gitattributes README.md
echo "Switching to Debian Testing..."
sudo cp sources.list /etc/apt/sources.list
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
rm sources.list
echo "Installing yt-dlp and dependencies..."
sudo apt install ffmpeg python3 yt-dlp -y
sudo apt autoremove -y
echo "Setting up download scripts..."
sudo cp dl-a /usr/local/bin
sudo cp dl-v /usr/local/bin
sudo chmod u+x /usr/local/bin/dl-a
sudo chmod u+x /usr/local/bin/dl-v
rm dl-a dl-v install.sh
echo "Setup has finished."
