#1. environment configuration
#-------------------------------

if [ -f ~/.git-completion.bash ] ; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.bash ] ; then
  source ~/.git-prompt.bash
fi

if [ -f ~/.alias ] ; then
  source ~/.alias
fi

if [ -f ~/.rvm/scripts/rvm ] ; then
  source ~/.rvm/scripts/rvm
fi

#set paths
#------------------------------------------------------------
export path="/usr/local/bin:/usr/local/sbin:~/bin:$path"
export path=$path:/usr/local/opt/go/libexec/bin


#set default editor (change 'nano' to the editor of your choice)
#------------------------------------------------------------
export editor=/usr/bin/vim

#set default blocksize for ls, df, du
#from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#------------------------------------------------------------
export blocksize=1k

#add color to terminal
#(this is all commented out as i use mac terminal profiles)
#from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#------------------------------------------------------------
export clicolor=1
export lscolors=exfxbxdxcxegedabagacad


