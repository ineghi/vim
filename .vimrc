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
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'

" Themes

Plug 'morhetz/gruvbox'
Plug 'tjammer/blayu', { 'as': 'blayu' }

call plug#end()

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

" => Configuration
""""""""""""""""""""""""""""""""""""

set termguicolors
colorscheme blayu
let g:lightline = { 'colorscheme': 'blayu' }
set laststatus=2
let g:rehash256 = 1
set t_Co=256
set background=dark
set guifont=Menlo\ Regular:h13

set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set autoindent

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


