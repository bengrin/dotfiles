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

" Plugins
set rtp +=~/.vim/bundle/Vundle.vim

call vundle#begin()


Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets

" HTML

Plugin 'tpope/vim-ragtag' 
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
Plugin 'othree/html5.vim'

" JS
Plugin 'othree/es.next.syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'gavocanov/vim-js-indent'
Plugin 'moll/vim-node'
Plugin 'othree/javascript-libraries-syntax.vim'


" Appearance
Plugin 'ap/vim-buftabline'
Plugin 'mhartington/oceanic-next'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" NERDTree
" show hidden files in NERDTree
let NERDTreeShowHidden=1

" Open nerdTree when no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 22

let NERDTreeQuitOnOpen=0

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" Theme
syntax enable
set t_Co=256
colorscheme OceanicNext
set background=dark

" Airline bar
let g:airline_theme='oceanicnext'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'

" Tabs
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

nmap <leader>, :w<cr>
nmap <leader>q :q<cr>
nmap <leader>a :qa<cr>

noremap H ^
noremap L $
