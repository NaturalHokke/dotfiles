set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2
set number
set background=dark
syntax enable


set nocompatible
filetype plugin indent off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif 
NeoBundleFetch 'Shougo/neobundle.vim'
filetype plugin indent on

NeoBundle 'altercation/vim-colors-solarized'

