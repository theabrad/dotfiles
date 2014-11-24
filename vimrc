set nocompatible			" be iMproved, required
filetype off				" required

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set number
syntax enable
colorscheme mrkn256

" vim airline
set laststatus=2


" terminal colors
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-markdown'

call vundle#end()			" required
filetype plugin indent on	" required
