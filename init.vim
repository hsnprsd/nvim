" Indentation
set tabstop=4
set shiftwidth=4

set expandtab
set autoindent
set smartindent

" Plugins
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'rakr/vim-one'

Plug 'preservim/nerdtree'

call plug#end()

" Colorscheme
colorscheme one
set background=dark
set termguicolors

set number

" Macros
let mapleader = ','

nnoremap <leader>ff <ESC>:Files<CR>
nnoremap <leader>ss <ESC>:Ag<CR>

set mouse=a
vmap <C-c> "+y

nnoremap <leader>a ggVG

" Coc
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

set statusline^=%{coc#status()}

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>o :CocCommand pyright.organizeimports<CR>

" Search
set incsearch
set nohlsearch

" Misc
set updatetime=250
