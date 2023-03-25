#!/bin/bash

brew install neovim

git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

mkdir ~/.config/nvim
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim

# nvim
# :TSInstall python
# :TSInstall bash
# :TSInstall lua
