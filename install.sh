echo "Update apt"
sudo apt-get update --noninteractive

# Install Fish

echo "Install fish started"
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

echo "Start installing tmux"

sudo apt-get install libutempter0
sudo apt-get install tmux

echo "End installing tmux"