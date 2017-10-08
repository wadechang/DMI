cd /tmp
# Install the basics
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim vim-gnome git curl llvm lldb clang python-pip meld

# Install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code # or code-insiders

#Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable

# Install Python 3.6
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt update
sudo apt install python3.6

# Install Node.js 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Rails 5
\curl -L https://get.rvm.io | bash -s stable --ruby

# Install Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Install Go Lang
sudo apt-get install golang-go

# Install Rust
curl -sf -L https://static.rust-lang.org/rustup.sh | sh

# Install Anaconda 5.0.0
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
bash Anaconda3-5.0.0-Linux-x86_64.sh

# Install personal settings
\rm -rf ~/.git-completion.bash ~/.git-prompt.bash ~/.vimrc ~/.alias ~/.bash_profile
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
wget https://raw.githubusercontent.com/wadechang/DMI/master/git-promot.bash -O ~/.git-prompt.bash
wget https://raw.githubusercontent.com/wadechang/DMI/master/alias -O ~/.alias
wget https://raw.githubusercontent.com/wadechang/DMI/master/bash_aliases -O ~/.bash_aliases

# Install Vundle for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/wadechang/DMI/master/vimrc -O ~/.vimrc
vim +PluginInstall +qall

# Install pip

