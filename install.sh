#!/bin/bash

echo "Echo current directory"
cd .dotfiles
pwd

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
export SHELL=/bin/fish

echo "Move shell alias folder"
mv config.fish ~/.config/fish/config.fish

echo "Shell set to fish"

# Make fish start in bash shells by default
# echo "SHELL=/bin/fish" >> ~/.bashrc
# echo "exec /bin/fish -l" >> ~/.bashrc

echo "Start installing libutempter0, dependency of tmux to avoid interactive prompt"
sudo apt-get install libutempter0

echo "Start installing tmux"
sudo apt-get install tmux

echo "Install teamocil"
gem install teamocil

echo "End installing tmux"

echo "Install and setup atuin"

touch ~/.config/atuin/config.toml
echo "sync_frequency = \"5m\"" >> ~/.config/atuin/config.toml

bash <(curl https://raw.githubusercontent.com/ellie/atuin/main/install.sh)
atuin login -u loujaybee -p $ATUIN_PASSWORD --key "$ATUIN_KEY"

echo "End installing atuin"
