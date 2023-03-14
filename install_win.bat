@echo off

@REM vim
mklink .\.vimrc %HOMEDRIVE%%HOMEPATH%\.vimrc
mklink .\.dein.toml %HOMEDRIVE%%HOMEPATH%\.vimrc

