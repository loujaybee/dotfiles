#!/bin/bash

echo "hello world!";
sudo apt install fonts-firacode
sudo apt-get install fish
curl -L https://get.oh-my.fish > install
fish install --path=/home/gitpod/.local/share/omf --config=~/.config/omf
/usr/bin/fish -c "omf install agnoster"
