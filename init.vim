set tabstop=4
set shiftwidth=4

set expandtab
set autoindent
set smartindent

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ayu-theme/ayu-vim'
Plug 'endel/vim-github-colorscheme'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
Plug 'vim-scripts/Tango-colour-scheme'
Plug 'vim-scripts/kate.vim'

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'

Plug 'owickstrom/vim-colors-paramount'

call plug#end()

colorscheme one
set background=dark

let mapleader = ','

nnoremap <leader>ff <ESC>:Files<CR>
nnoremap <leader>ss <ESC>:Ag<CR>

set incsearch
set nohlsearch

set number

set termguicolors

" coc
"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

set statusline^=%{coc#status()}

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>o :CocCommand pyright.organizeimports<CR>

set mouse=a
vmap <C-c> "+y

set updatetime=250

nnoremap <leader>a ggVG
