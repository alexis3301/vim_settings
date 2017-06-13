#!/bin/bash

# getting the repo
cd
git clone https://github.com/alexis3301/vim_settings.git 
ln -s ~/vim_settings/.vimrc ~/.vimrc
ln -s ~/vim_settings/.plugin.vim ~/.plugin.vim
mkdir .vim && cd .vim && mkdir bundle && cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

