set nocompatible
filetype off

let mapleader=','
set mouse=a
syntax on
set noswapfile

" General
set encoding=utf-8
set showmode
set showcmd
set hidden
set ttyfast
set number
set ruler
set laststatus=2
set history=1000
set undodir=~/.vim/undo
set undofile
set undoreload=10000
set lazyredraw
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread

" Tabs
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
set textwidth=80

" White space
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

nmap <leader><space> : %s/\s\+$<cr>
