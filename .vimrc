set nocompatible
filetype off
filetype plugin indent off

" NeoBundle Scripts ------------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Bundles
NeoBundle 'Shougo/vimproc', {
  \   'build' : {
  \     'windows': 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac'    : 'make -f make_mac.mak',
  \     'unix'   : 'make -f make_unix.mak',
  \   },
  \ }

" color scheme
NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'baskerville/bubblegum'
" NeoBundle 'nanotech/jellybeans.vim'
" NeoBundle 'w0ng/vim-hybrid'
" NeoBundle 'vim-scripts/twilight'
" NeoBundle 'jonathanfilip/vim-lucius'
" NeoBundle 'jpo/vim-railscasts-theme'

" tree view
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-\> :NERDTreeToggle<CR>

" status line
NeoBundle 'bling/vim-airline'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
" ----------------------------- NeoBundle Scripts.

" 文字コード, 改行コード
set encoding=utf-8
set fileencodings=ucs_bom,utf8,ucs-2le,ucs-2
set fileformats=unix,dos,mac

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2
set number
set nobackup
set noswapfile
set autoread
set ambiwidth=double
set display=uhex
set scrolloff=5
set background=dark
syntax enable
