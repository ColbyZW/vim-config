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
Plug 'tc50cal/vim-terminal'
Plug 'https://github.com/neoclide/coc.nvim'

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-1> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

colorscheme torte

