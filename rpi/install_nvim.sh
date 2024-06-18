#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install ninja-build gettext cmake unzip curl build-essential
git clone https:/dgithub.com/neovim/neovim && cd neovim && git checkout stable
make CMAKE_BUILD_TYPE=Release
cd build
cpack -G DEB && sudo dpkg -i nvim-linux64.deb
cd ../..
rm -rf neovim
