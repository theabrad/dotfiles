set nocompatible			" be iMproved, required
filetype off				" required

" tabs
set tabstop=2
set shiftwidth=2
" set softtabstop=4
set expandtab
set backspace=indent,eol,start
set mouse=a
set noswapfile

set number
"syntax enable

" terminal colors
set t_Co=256
" set termguicolors

" vim airline
set laststatus=2
" color molokai
"colorscheme grb256 
colorscheme grb256
" colorscheme onedark


let g:syntastic_ruby_checkers = ['rubocop','mri']
let g:syntastic_javascript_checkers = ['eslint']

" GO highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" automatically start NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" close a tab if only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'hdima/python-syntax'
Plug 'slim-template/vim-slim'
Plug 'elixir-editors/vim-elixir'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-markdown'
Plug 'derekwyatt/vim-scala'
Plug 'fatih/vim-go', { 'for' : ['go', 'markdown'] }
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

syntax enable
