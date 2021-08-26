"
" .vimrc settings
"

" Encoding
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=utif-8,cp932


" Set Options
set number


" Set Status Line
set laststatus=2
set showmode
set showcmd
set ruler


" Indent
set autoindent
set smartindent
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4


" Backspace
set backspace=indent,eol,start


" File
set nowritebackup
set nobackup
set noswapfile


" Syntax Highlight
syntax enable


" Plugins ============================================================
" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}

