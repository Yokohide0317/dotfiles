#!/bin/bash

# Requirements
function init_setup() {
    mkdir -p ~/.config

}

# Vim
function vim_setup() {
    ## tmp file
    mkdir -p ~/.vim/tmp/backup
    mkdir -p ~/.vim/tmp/swap

    ## NeoBundle
    mkdir -p ~/.vim/bundle
    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

}

# Powerline
function powerline_setup() {
    pip3 install powerline-shell
    cp -r powerline-shell/ ~/.config/
}

init_setup
vim_setup
powerline_setup
