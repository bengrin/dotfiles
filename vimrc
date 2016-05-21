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
set scrolloff=3
set noerrorbells
set visualbell


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

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set magic

" Clear search
noremap <silent> <leader>c :noh<cr>:call clearmatches()<cr>

map <tab> %
nnoremap D d$

" Move to begining an end of line
noremap H ^
noremap L g_

" Chane case
nnoremap <C-u> gUiw
inoremap <c-u> <esc>gUiwea

" Command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

set pastetoggle=<F3>




