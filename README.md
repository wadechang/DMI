# vim

How to install Vundle on Windows 10:
1. Install git
2. Install curl
3. Install Vundle
Vundle Quick Start page
https://github.com/VundleVim/Vundle.vim#quick-start

Replace:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

With:
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

$VIM is "c:\Program Files (x86)\Vim"
