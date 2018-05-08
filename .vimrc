" fix the vimhome variable
if has('win32') || has ('win64')
  let $VIMHOME = $VIM."/vimfiles"
else
  let $VIMHOME = $HOME."/.vim"
endif

so ~/.plugin.vim                                " Source the plugin file


autocmd vimenter * NERDTree
filetype plugin indent on                       " use the file type plugins
let mapleader = ','                             " key to type before each commands here

"------ Visuals ------"
set tabstop=4
set expandtab
set shiftwidth=4
set nowrap                                      " no auto wrapping
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
set ruler
set showtabline=2                               " always show tab line

highlight LineNr ctermfg=green ctermbg=darkblue

highlight BadWhitespace ctermfg=white ctermbg=lightblue

au BufNewFile,BufRead Jenkinsfile setf groovy   " Groovy file syntax highlighting for jenkinsfile

au BufNewFile,BufRead *.php                      " PHP coding standards
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=80
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set encoding=utf-8

au BufNewFile,BufRead *.py                      " Python coding standards
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set encoding=utf-8


au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let NERDTreeIgnore=['\.pyc$', '\.swp$', '\~$']            "ignore files in NERDTree


au BufNewFile,BufRead *.js, *.html, *.css       " HTML standards
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"------ Searching ------"
set hlsearch                                    " highlight search
set incsearch                                   " incremental search


"------ Replacing ------"
set grepprg=ag                                      " use Ag to search
let g:grep_cmd_opts = '--line-numbers --noheading'



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
" edit the plugin file "
nmap <Leader>ep :tabedit ~/.plugin.vim<cr>
" edit the snippet file "
nmap <Leader>es :tabedit $VIMHOME/snippets/
" remove highlight search
nmap <Leader><space> :nohlsearch<cr>
" control - 1 to toggle nerdtree
nmap <leader>1 :NERDTreeToggle<cr>
" Show all tags for the current file
" this is commented out, since it remapped the redo mapping
" nmap <C-R> :CtrlPBufTag<cr>
nmap <Leader>R :CtrlPBufTag<cr>

" reveal current file in nerdtree
nmap <Leader>r :NERDTreeFind<cr>

" emaulate control-f to find symbols
nmap <Leader>f :tag<space>

" JSON prettify
nmap <Leader>p :%!python -mjson.tool<cr>

nmap <C->> <C-]>

" python syntax highlight on
let python_highlight_all=1
syntax on


" change the default <TAB> key from YCM, back to snipmate
let g:ycm_key_list_select_completion = ['<C-TAB>']


"------ Auto-commands ------"

augroup autosourcing
  " clear out the autocommand buffer
  autocmd!
  "automatic source when writing .vimrc"
  autocmd bufWritePost .vimrc source %
augroup END

" add the use statement if you point on a given object.
function! IPhpInsertUse()
  call PhpInsertUse()
  call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>eu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>eu :call PhpInsertUse()<CR>

" auto expand the cursor name into its fully qualified version
function! IPhpExpandClass()
  call PhpExpandClass()
  call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>ef <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>ef :call PhpExpandClass()<CR>

" markdown support:
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Drop Vdebug settings at the end of the file " 
" path_maps are in reverse order compare to docker => guest:host
let g:vdebug_options = {
\ 'break_on_open': 1,
\ 'path_maps': {'/var/www/': '/Users/alexis.cachat/web/mv-laravel/'},
\ 'port': '9001',
\ 'watch_window_style': 'compact'
\ }

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
"
" for vim-surround : 
" [action]s[modifier1]{[modifier2]}
" where action is either c for change, or d for delete
" modifier1 is either t for tag, or a character like ' or "
" modifier2 is used in change, to replace.
