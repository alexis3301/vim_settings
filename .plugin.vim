filetype off                                    " Required

set rtp+=~/.vim/bundle/Vundle.vim               " set the runtime path to include Vundle and initialize
call vundle#begin()
" General / php oriented plugins
Plugin 'VundleVim/Vundle.vim'                   " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-rhubarb'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'stanangeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'ervandew/supertab'                    " This one mess up the completion. Better stick with <C-n>
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'yaroot/vissort'                         " Visual sorting
Plugin 'joonty/vdebug'                          " xdebug for php, nodejs, python, ruby
Plugin 'ekalinin/Dockerfile.vim'                " Docker files highlighting
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'christoomey/vim-conflicted'             " solve git conflicts from vim
" Plugin 'm2mdas/phpcomplete-extended'
" Plugin 'm2mdas/phpcomplete-extended-laravel'

" Python related plugins:
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" html related plugins:
Plugin 'alvan/vim-closetag'

call vundle#end()                               " required
filetype plugin indent on                       " required
