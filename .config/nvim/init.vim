call plug#begin()
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Colorscheme
    Plug 'elvessousa/sobrio'

    " Editing
    Plug 'tpope/vim-commentary'
call plug#end()

colorscheme sobrio
syntax on
set nocompatible
filetype plugin indent on

set ttyfast

set number relativenumber
set background=dark
set cursorline
set hidden
set title
set ttimeoutlen=0
set wildmenu

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent

set wildmode=longest,list
set mouse=v
set mouse=a
set clipboard+=unnamedplus

set showmatch
set hlsearch
set incsearch

set splitright
set splitbelow

let term_program=$TERM_PROGRAM

if $TERM !=? 'xterm-256color'
    set termguicolors
endif

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"


" Airline config
let g:airline_theme='sobrio'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

