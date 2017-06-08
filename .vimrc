execute pathogen#infect()
call pathogen#helptags()
autocmd vimenter * NERDTree
filetype plugin indent on                       " use the file type plugins
let mapleader = ','                             " key to type before each commands here

"------ Visuals ------"
set tabstop=2
set expandtab
set shiftwidth=2
colorscheme delek
syntax on                                       " Syntax highlighting
set number nu                                   " Line numbers
set cursorline                                  " Color the cursorline
set autoindent                                  " Auto indenting
set smartindent                                 " Smart indenting

set guioptions-=l                               " Remove left scrollbar
set guioptions-=L                               " remove left scrollbar when windows is split vertically
set guioptions-=r                               " same for right hand
set guioptions-=R

set showtabline=2                               " always show tab line


"------ Searching ------"
set hlsearch                                    " highlight search
set incsearch                                   " incremental search





"------ Split window management  ------"
set splitbelow
set splitright

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>






"------ Mappings ------"
" edit the vimrc file "
nmap <Leader>ev :tabedit $MYVIMRC<cr>
" remove highlight search
nmap <Leader><space> :nohlsearch<cr>
" control - 1 to toggle nerdtree
nmap <leader>1 :NERDTreeToggle<cr>
" Show all tags for the current file
nmap <C-R> :CtrlPBufTag<cr>

" reveal current file in nerdtree
nmap <Leader>r :NERDTreeFind<cr>

" emaulate control-f to find symbols
nmap <Leader>f :tag<space>






"------ Auto-commands ------"
augroup autosourcing
  " clear out the autocommand buffer
  autocmd!
  "automatic source when writing .vimrc"
  autocmd bufWritePost .vimrc source %
augroup END





" ------ Notes and tips ------"
" 'zz' to center current line in view port
" ':!' and some shell command to run said command from within vim without
" doing ':sh' first
" ':!ctags -R *' to run ctags from within vim without going to the shell
" <C-]> to go to the definition of the symbol (needs ctags updated)
" <C-^> to go back from the symbol definition to where it was called.
" marker : can be anything from '"})/<:
" 'di' and marker to delete inside said marker
" 'da' and marker to delete marker and content of marker
" D is for delete, v to select and c to change (select and insert in place,
" while removing previous content)