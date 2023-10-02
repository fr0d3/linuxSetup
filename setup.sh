# TO-DO
# 1. create a .vimrc to transfer it to every machine
# 2. create a terminator config file to transfer to every machine

#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade

#install basic packages
sudo apt-get install -y git
sudo apt-get install -y python3-pip

#creating directory for tools
mkdir ~/tools
mkdir ~/.fonts

GREEN='\033[0;32m'
NOCOLOR='\033[0m'

#installing JetBrainsMono NerdFont
echo -e "\n\n${GREEN}installing JetBrainsMono NerdFont${NOCOLOR}"
cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
unzip -qq JetBrainsMono.zip -d JetBrainsMono
rm JetBrainsMono.zip
echo -e "${GREEN}done${NOCOLOR}\n\n"

#install vim
echo -e "${GREEN}installing vim${NOCOLOR}"
sudo apt install -y vim
echo -e "${GREEN}done${NOCOLOR}\n\n"

#install terminator
echo -e "${GREEN}installing terminator${NOCOLOR}"
sudo apt install -y terminator
echo -e "${GREEN}done${NOCOLOR}\n\n"

#copy .vimrc file
cp ~/linux-setup/files/.vimrc ~/

#copy terminator configuration file
cp ~/linux-setup/files/terminator/config ~/.config/terminator

#install nmap
echo -e "${GREEN}installing nmap${NOCOLOR}"
sudo apt install -y nmap
echo -e "${GREEN}done${NOCOLOR}\n\n"

#install wireshark
echo -e "${GREEN}installing wireshark${NOCOLOR}"
sudo apt install -y wireshark
echo -e "${GREEN}done${NOCOLOR}\n\n"

#install nikto
echo -e "${GREEN}installing nikto${NOCOLOR}"
cd ~/tools
git clone https://github.com/sullo/nikto
cd ./nikto/program
git checkout nikto-2.5.0
echo "alias nikto='~/tools/nikto/program/nikto.pl'" >> ~/.bashrc
echo -e "${GREEN}done${NOCOLOR}\n\n"

#install hydra
echo -e "${GREEN}installing hydra${NOCOLOR}"
cd ~/tools
git clone https://github.com/vanhauser-thc/thc-hydra
cd ./thc-hydra
./configure
sudo make
sudo make install
echo -e "${GREEN}done${NOCOLOR}\n\n"

#install RsaCtfTool
echo -e "${GREEN}installing RsaCtfTool${NOCOLOR}"
cd ~/tools
git clone https://github.com/RsaCtfTool/RsaCtfTool.git
sudo apt-get install -y libgmp3-dev libmpc-dev
cd ./RsaCtfTool
pip3 install -r "requirements.txt"
echo "alias rsatool='python3 ~/tools/RsaCtfTool/RsaCtfTool.py'" >> ~/.bashrc
echo -e "${GREEN}done${NOCOLOR}\n\n"

#downloading SecLists
echo -e "${GREEN}downloading Seclists${NOCOLOR}"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
echo -e "${GREEN}done${NOCOLOR}\n\n"

#remove no longer required packages
echo -e "${GREEN}autoremove initiated${NOCOLOR}"
sudo apt autoremove
echo -e "${GREEN}done${NOCOLOR}\n\n"
