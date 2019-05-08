" On Top Confuguration
""""""""""""""""""""""""""""""""""""
let mapleader = ','

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
Plug 'itchyny/lightline.vim'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'

" Themes

Plug 'tjammer/blayu', { 'as': 'blayu' }

call plug#end()

" Configure CTRLP to ignore files

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_split_window = 1 " <CR> = New Tab

" Configure netrw

let g:netrw_banner = 0

" Configure lightline

let g:lightline = {
            \   'colorscheme': 'blayu',
            \    'active': {
            \     'left':[ [ 'mode', 'paste' ],
            \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
            \     ]
            \   },
            \   'component_function': {
            \     'gitbranch': 'fugitive#head',
            \   }
            \ }

" Configure emmet

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Configure Indent line

let g:indentLine_enabled = 1
let g:indentLine_char = '.'
let g:indentLine_color_term = 239
let g:indent_guides_enable_on_vim_startup = 1

" => Configuration
""""""""""""""""""""""""""""""""""""
set termguicolors
set background=dark
set laststatus=2
let g:rehash256 = 1
set t_Co=256
set encoding=UTF-8
colorscheme blayu

set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set autoindent
set backspace=indent,eol,start

set number
set showcmd
set ruler
set cursorline
set mouse=a

filetype on
filetype indent on
syntax on
 
set wildmenu
set showmatch

set incsearch
set hlsearch


