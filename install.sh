# Install Fish
sudo apt-get install fish
echo "apt install fish finished"
curl -L https://get.oh-my.fish > install
echo "Install oh my fish"
fish install --path=/home/gitpod/.local/share/omf --config=~/.config/omf --noninteractive
echo "Run fish install"
/usr/bin/fish -c "omf install agnoster"
echo "omf finished"
SHELL=/bin/fish
echo "Shell set to fish"

# Make fish start in bash shells by default
# echo "SHELL=/bin/fish" >> ~/.bashrc
# echo "exec /bin/fish -l" >> ~/.bashrc

if [ $GITPOD_IDE_ALIAS == "xterm" ]
then
    echo "Running xterm editor"
else
    echo "Not running xterm editor!"
fi