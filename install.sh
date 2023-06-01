# Install Fish
sudo apt-get install fish
echo "apt install fish finished"
curl -L https://get.oh-my.fish > install
echo "Install oh my fish"
fish install --path=/home/gitpod/.local/share/omf --config=~/.config/omf
echo "Run fish install"
/usr/bin/fish -c "omf install agnoster"
echo "omf finished"
SHELL=/bin/fish
echo "Shell set to fish"

