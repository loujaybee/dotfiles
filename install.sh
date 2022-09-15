#!/bin/bash
echo "hello world!";
sudo ./.bashrc
sudo apt-get install fish
curl -L https://get.oh-my.fish > install
fish install --path=/home/gitpod/.local/share/omf --config=~/.config/omf
/usr/bin/fish -c "omf install agnoster"
SHELL=/bin/fish
