# Install Vim with Vundle with Windows 10

How to install Vim with Vundle on Windows 10:
1. Install Vim
   * Download link: https://vim.sourceforge.io/download.php#pc
   * $VIM is where your vim is installed. Normally it's "c:\Program Files (x86)\Vim". However, it's better to have your vim installed at "c:\vim" to avoid possible permission issues.
   
2. Install git Windows version
   * Download link: https://git-scm.com/downloads
   
3. Install Vundle by using git
   * cd c:\vim (or where your Vim is installed)
   * git clone https://github.com/VundleVim/Vundle.vim.git vimfiles/bundle/Vundle.vim
   * (Vundle Quick Start page https://github.com/VundleVim/Vundle.vim#quick-start)

4. Edit $VIM/_vimrc (this is equilavent to .vimrc in *NIX system)
   * Replace: set rtp+=~/.vim/bundle/Vundle.vim call vundle#begin()
   * With: set rtp+=$VIM/vimfiles/bundle/Vundle.vim/ call vundle#begin('$VIM/vimfiles/bundle/')
   
5. Initialize Vundle in Vim/gVim:
   * Launch Vim/gVim
   * :PluginInstall
   
Enjoy it!


