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
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'gregsexton/matchtag'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kana/vim-arpeggio'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

" Themes

Plug 'lifepillar/vim-solarized8'

call plug#end()

" Configure CTRLP to ignore files

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_split_window = 1 " <CR> = New Tab

" Configure netrw

let g:netrw_banner = 0

" Configure emmet

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Configure Indent line

let g:indentLine_enabled = 1
let g:indentLine_char = '.'
let g:indentLine_color_term = 239
let g:indent_guides_enable_on_vim_startup = 1

" Configure Arpeggio

call arpeggio#map('i', '', 0, 'jk', '<Esc>')

" Configure Nerdtree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '~'
map <C-n> :NERDTreeToggle<CR>

" => Configuration
""""""""""""""""""""""""""""""""""""
syntax enable
" set termguicolors
set t_Co=256
set background=dark
colorscheme solarized8

set encoding=UTF-8
set laststatus=2
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
 
set wildmenu
set showmatch

set incsearch
set hlsearch


