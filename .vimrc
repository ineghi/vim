" Confuguration
""""""""""""""""""""""""""""""""""""
ret mapleader = ','

let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
set guifont=Menlo\ Regular:h13

set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set autoindent
set nowrap

set number
set showcmd
set ruler
set cursorline

filetype on
filetype indent on
syntax on
 
set wildmenu
set showmatch

set incsearch
set hlsearch

" Language specific

autocmd FileType markdown set wrap 

" Make delete work the same as other programs in osx => https://stackoverflow.com/questions/4158312/how-can-i-fix-my-delete-key-in-vim-over-ssh-mac-os-x

if has('macunix')
    set backspace=indent,eol,start
endif

" Scripts
""""""""""""""""""""""""""""""""""""

" Install Vim Plug if he doesn't exist

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

call plug#end()

" Gruvbox

colorscheme gruvbox

" Configure CTRLP to ignore files

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_split_window = 1 " <CR> = New Tab

" Configure Nerdtree

nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" Configure Indent line

let g:indentLine_enabled = 1
let g:indentLine_char = '.'
let g:indentLine_color_term = 239
let g:indent_guides_enable_on_vim_startup = 1
