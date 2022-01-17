""" Plugin installation and configurations
call plug#begin()

    """ Airline (considering replacing it for lualine)
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    """ Colorscheme
    Plug 'elvessousa/sobrio'
    Plug 'joshdick/onedark.vim'

    """ Git related 
    " Show git status on gutter 
    Plug 'airblade/vim-gitgutter'

    " Magit?
    Plug 'tpope/vim-fugitive'

    """ Editing
    " Adding comments with `gc`, `gcc`...
    Plug 'tpope/vim-commentary'

    " Surrounding with delimiter `ysiw)`...
    Plug 'tpope/vim-surround'

    " Repeat custom plugin mappings, use with surround ^
    Plug 'tpope/vim-repeat' 

    " Auto-insert matching characters
    Plug 'andymass/vim-matchup'

    " Show file tags in sidebar
    Plug 'majutsushi/tagbar'  

    " Show matching parenthesis and other delimiters
    Plug 'raimondi/delimitmate'

    " Language Packs 
    Plug 'sheerun/vim-polyglot'

    " Auto completions :CocInstall
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Telescope (fuzzy finder)
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}

    " File explorer, better than NERDtree and netrw 
    Plug 'antoinemadec/FixCursorHold.nvim'
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/fern-git-status.vim'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    Plug 'lambdalisue/fern-hijack.vim'
    Plug 'lambdalisue/nerdfont.vim'

    Plug 'machakann/vim-highlightedyank' 
call plug#end()

autocmd BufWritePre *go :silent call CocAction('runCommand', 'editor.action.organizeImport')
