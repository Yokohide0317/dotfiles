#/bin/bash

# Requirements
function init_setup() {
    mkdir -p ~/.config
}

# Vim
function vim_setup() {
    ## tmp file
    mkdir -p ~/.vim/tmp/backup
    mkdir -p ~/.vim/tmp/swap
}

init_setup
vim_setup
