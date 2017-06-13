#!/bin/bash

ln -s ~/vim_settings/.vimrc ~/.vimrc
ln -s ~/vim_settings/.plugin.vim ~/.plugin.vim
mkdir .vim && cd .vim && mkdir bundle && cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

