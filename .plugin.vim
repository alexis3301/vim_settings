filetype off                                    " Required

set rtp+=~/.vim/bundle/Vundle.vim               " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'                   " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-rhubarb'




call vundle#end()                               " required
filetype plugin indent on                       " required
