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


" vim airline
set laststatus=2
" color molokai
colorscheme grb256 
" colorscheme onedark
set termguicolors

" terminal colors
set t_Co=256

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


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'hdima/python-syntax'
Plugin 'slim-template/vim-slim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'tpope/vim-markdown'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'
Plugin 'drewtempelmeyer/palenight.vim'




call vundle#end()			" required
filetype plugin indent on	" required
syntax enable
