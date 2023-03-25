#!/bin/bash

brew install neovim

git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

mkdir ~/.config/nvim
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim

ln init.lua ~/.config/nvim/
mkdir ~/.config/nvim/user
ln user.lua ~/.config/nvim/lua/user/

# nvim
# :TSInstall python
# :TSInstall bash
# :TSInstall lua
