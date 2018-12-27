" dein自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

let g:netrw_liststyle = 3

filetype plugin indent on
set termguicolors
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set fileencodings=ucs_bom,utf8,ucs-2le,ucs-2 fileformats=unix,dos,mac
set list listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:%
set nobackup noswapfile
set encoding=utf-8
set ambiwidth=double
set scrolloff=10
set background=dark
set mouse=a
set cursorline
set number
set title
colorscheme hybrid
hi clear CursorLine
