set hidden

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300

set shortmess+=c
set signcolumn=number

colorscheme onedark 
syntax on
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
set scrolloff=5

set showmatch
set hlsearch
set incsearch

set splitright
set splitbelow

set foldmethod=indent

" Open all folds when opening file
au BufRead * normal zR 

set noshowmode

set formatoptions+=j " Delete comment character when joining lines

let term_program=$TERM_PROGRAM

if $TERM !=? 'xterm-256color'
    set termguicolors
endif

" Enable italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let g:fern#renderer = "nerdfont"
