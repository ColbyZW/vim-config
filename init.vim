set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'preservim/tagbar'
" Allows running a terminal inside of vim
Plug 'tc50cal/vim-terminal'
" Gruvbox Theme
Plug 'morhetz/gruvbox'
" Language Linting and AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Nord Theme
Plug 'shaunsingh/nord.nvim'
" Palenight Theme
Plug 'drewtempelmeyer/palenight.vim'

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-1> :call CocActionAsync('jumpDefinition')<CR>
" Turns off highlighting the last search
nnoremap <C-s> :noh<CR>

nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

set background=dark
colorscheme palenight
