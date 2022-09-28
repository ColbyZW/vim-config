set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
syntax enable


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
" Rust Syntax Highlighting
Plug 'rust-lang/rust.vim'
" Nord Theme
Plug 'shaunsingh/nord.nvim'
" Palenight Theme
Plug 'drewtempelmeyer/palenight.vim'
" Syntax highlighting for many languages
Plug 'sheerun/vim-polyglot'
" Nice color theme
Plug 'sainnhe/everforest'
" Shows git diffs in the gutter of vim
Plug 'airblade/vim-gitgutter'
" Shortcuts to comment whole lines/blocks of code
Plug 'tpope/vim-commentary'

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-1> :call CocActionAsync('jumpDefinition')<CR>
" Turns off highlighting the last search
nnoremap <C-s> :noh<CR>
" Maps ctrl+l and ctrl+h to flipping through open NERDTree tabs
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! CheckSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col-1] != ' ' || getline('.')[col+1] != ' '
endfunction

" Map to let us go through the autocomplete with shift tab
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
" Remap to allow us to do tab to do an autocomplete
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() :
		\ CheckBackspace() ? "\<Tab>" :
		\ coc#refresh()

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * if !argc() | NERDTree | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

let g:everforest_background = 'soft'
set background=dark
colorscheme everforest
