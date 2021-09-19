filetype plugin indent on
" tabs
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" tabs for go
autocmd FileType go setlocal expandtab shiftwidth=4 softtabstop=4
set backspace=indent,eol,start
set mouse=a
set noswapfile

set number
set numberwidth=5

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" terminal colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" vim airline
set laststatus=2
" let g:airline_theme='palenight'

" ALE configurations
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" GO highlighting
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" automatically start NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" close a tab if only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" map control-p to :FZF
nnoremap <silent> <C-p> :FZF<CR>

set rtp+=/opt/homebrew/opt/fzf

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'bling/vim-airline'
Plug 'vim-python/python-syntax'
Plug 'slim-template/vim-slim'
Plug 'elixir-editors/vim-elixir'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-markdown'
Plug 'derekwyatt/vim-scala'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'w0rp/ale'
Plug 'tomlion/vim-solidity'
Plug 'whatyouhide/vim-gotham'

call plug#end()

syntax enable

" call colorsehemes after plug end

colorscheme palenight
