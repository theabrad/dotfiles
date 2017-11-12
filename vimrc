set nocompatible			" be iMproved, required
filetype off				" required

" tabs
set tabstop=2
set shiftwidth=2
" set softtabstop=4
set expandtab
set backspace=indent,eol,start
set mouse=a

set number
syntax enable


" vim airline
set laststatus=2
color molokai

" terminal colors
set t_Co=256

let g:syntastic_ruby_checkers = ['rubocop','mri']
let g:syntastic_javascript_checkers = ['eslint']

" automatically start NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'hdima/python-syntax'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-markdown'
Plugin 'derekwyatt/vim-scala'

call vundle#end()			" required
filetype plugin indent on	" required
