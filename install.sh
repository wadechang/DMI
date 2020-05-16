cd /tmp
# Install the basics
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git curl llvm lldb clang meld ctags gdebi-core wget python3-pip

# Install Visual Studio Code
sudo snap install --classic code

#Install Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable

# Install Node.js 
sudo apt install nodejs npm

# Install Rails 5
sudo apt install ruby rails

# Install Go Lang
sudo apt-get install golang-go

# Install Rust
sudo apt install rustc

# Install Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang
sudo apt-get install elixir

# Install personal settings
\rm -rf ~/.git-completion.bash ~/.git-prompt.bash ~/.vimrc ~/.alias ~/.bash_profile
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
wget https://raw.githubusercontent.com/wadechang/DMI/master/git-promot.bash -O ~/.git-prompt.bash
wget https://raw.githubusercontent.com/wadechang/DMI/master/alias -O ~/.alias
wget https://raw.githubusercontent.com/wadechang/DMI/master/bash_aliases -O ~/.bash_aliases
wget https://raw.githubusercontent.com/wadechang/DMI/master/ctags -O ~/.ctags

# Install Vundle for Vim
sudo apt install vim vim-gtk3
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/wadechang/DMI/master/vimrc -O ~/.vimrc
vim +PluginInstall +qall

# Set git global ignore file
wget https://raw.githubusercontent.com/github/gitignore/master/Ruby.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Rust.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Swift.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/TeX.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/VisualStudio.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/CUDA.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Elixir.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Erlang.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Go.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Java.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Objective-C.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Rails.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/C.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/CMake.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Global/Tags.gitignore
wget https://raw.githubusercontent.com/github/gitignore/master/Global/Vim.gitignore
\rm -rf ~/.global.gitignore
\cat *.gitignore > ~/.global.gitignore
git config --global core.excludesfile ~/.global.gitignore

