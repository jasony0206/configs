set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required

execute pathogen#infect()
filetype plugin indent on    " required
set laststatus=2             " Necessary for vim-airline

" Color scheme
" jellybeans, monokai,
" colorscheme monokai
" let python_highlight_all=1
" Solarized color scheme
syntax enable
set background=dark
"let g:solarized_termcolors=16
colorscheme solarized
let g:airline_theme='bubblegum'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set showcmd
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
"nnoremap <space> za

set nu
