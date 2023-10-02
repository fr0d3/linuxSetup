#!/bin/bash

GREEN='\033[0;32m'
NOCOLOR='\033[0m'

#install hydra
echo -e "${GREEN}installing hydra${NOCOLOR}"
git clone https://github.com/vanhauser-thc/thc-hydra
mv ./thc-hydra ~/tools/
rmdir ./thc-hydra
cd ~/tools/thc-hydra
./configure
make
make install
echo -e "${GREEN}done${NOCOLOR}\n\n"
