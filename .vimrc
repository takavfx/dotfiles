"                                _
"                         __   _(_)_ __ ___  _ __ ___
"                         \ \ / / | '_ ` _ \| '__/ __|
"                          \ V /| | | | | | | | | (__
"                         (_)_/ |_|_| |_| |_|_|  \___|
"

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932

" Set UI Language
"set langmenu=en_US.UTF-8

"" Set Options
set number
set hlsearch
set incsearch
nmap <Esc><Esc> :nohl<CR>


"" Edit
set backspace=indent,eol,start


"" Set Status Line
set laststatus=2
set showmode
set showcmd
set ruler


"" Indent
set autoindent
set smartindent
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4


"" File
set nowritebackup
set nobackup
set noswapfile


"" Syntax Highlight
syntax enable

"" Color Scheme
colorscheme darkblue

"" Tab
map <C-T>l :tabnext<cr>
map <C-T>h :tabprevious<cr>
map <C-T>n :tabnew<cr>
map <C-T>c :tabclose<cr>

"" Paste from Clipboard
set clipboard+=unnamed

"" shell
"set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

"" Plugins {{{
"" dein.vim settings {{{
let s:dein_dir = expand('~/.vim/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
"" }}}

"" dein installation check {{{
if $runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . s:dein_repo_dir
endif
"" }}}

"" begin settings {{{
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	"" .toml file
	let s:rc_dir = expand('~')
	if !isdirectory(s:rc_dir)
		"call mkdir(s:rc_dir, 'p')
	endif
	let s:toml = s:rc_dir . '/.vim/.dein.toml'

	"" read toml and cache
	call dein#load_toml(s:toml, {'lazy': 0})

	"" end settings
   call dein#end()
	call dein#save_state()
endif
"" }}}}

"" plugin installation check {{{
if dein#check_install()
	call dein#install()
endif
"" }}}

"" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
	call map(s:removed_plugins, "delete(v:val, 'rf')")
	call dein#recache_runtimepath()
endif
"" }}}

"" Load credentail setting script
try
	execute 'source ' . expand('~/.vim/.credential.vim')
	execute 'soruce ' . expand('~/.vim/.dev.vim')
catch
	" Ignore imports
endtry

