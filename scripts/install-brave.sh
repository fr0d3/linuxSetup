#!/bin/bash

GREEN='\033[0;32m'
NOCOLOR='\033[0m'

#install brave
echo -e "${GREEN}installing brave${NOCOLOR}"
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
echo -e "${GREEN}done${NOCOLOR}\n\n"
