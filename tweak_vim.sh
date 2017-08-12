#!/bin/bash

ln -s ~/vim_settings/.vimrc ~/.vimrc
ln -s ~/vim_settings/.plugin.vim ~/.plugin.vim
cd ~ && mkdir .vim && cd .vim && mkdir bundle && cd bundle
ln -s ~/vim_settings/snippets ~/.vim/snippets
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

