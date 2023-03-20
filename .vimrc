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

try
	source ./.dein.vim
	source ./.credential.vim
catch
	" No such file? No problem; just ignore it.
endtry

