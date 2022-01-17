set nocompatible

exe 'source $HOME/.config/nvim/plugins.vim'
exe 'source $HOME/.config/nvim/mappings.vim'
exe 'source $HOME/.config/nvim/settings.vim'

""" Airline config
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

lua << EOF
require'nvim-treesitter.configs'.setup{
    matchup = {
        enable = true,
    },
}
EOF

