""" Functions

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col-1] =~# '\s'
endfunction

function! s:show_documentation()
    if (index(['vim', 'help'],&filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

""" General mappings

nmap <space> <leader>

vmap > >gv
vmap < <gv
vmap = =gv

nnoremap Q @q

" Split panes navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" Switching buffers
map <silent> <c-n> :bp<CR>
map <silent> <c-m> :bn<CR>
map <silent> <leader>bq :bd<CR>

" Execute current line as a command
nnoremap <silent> <leader>ee :exe getline(line('.'))<CR>

" Source current file
nnoremap <silent> <leader>es :so %<CR>

""" Telecope mappings
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>ft <cmd>Telescope tags<CR>

nnoremap <silent> <leader>ws :w<CR>
nnoremap <silent> <leader>wq :wq<CR>


""" CoC mappings

" Using tab for completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion
if has("nvim")
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<cr>"

" using [g and ]g to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostics-prev)
nmap <silent> ]g <Plug>(coc-diagnostics-next)

" GoTo code navigation
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol and references
autocmd CursorHold * silent call CocActionAsync('highlight')

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Format selected code
xmap <leader>rf <Plug>(coc-format-selected)
nmap <leader>rf <Plug>(coc-format-selected)

""" Tags
nmap <F8> :TagbarToggle<CR>

""" Fern
nnoremap <leader>dd :Fern . -reveal=%<CR>
