#!/bin/bash

echo "hello world!";
sudo apt install fonts-firacode
sudo apt-get install fish
fish
curl -L https://get.oh-my.fish > install
fish install --path=/home/gitpod/.local/share/omf --config=~/.config/omf
omf install agnoster
