# Be verbose
alias mv="command mv -iv"
alias cp="command cp -iv"
alias chmod="command chmod -v"
alias chown="command chown -v"
alias mkdir="command mkdir -vp"

# Replace the sudo prompt and add some color to it
alias sudo="command sudo -p \"$fg_bold[red][sudo] Password:$fg[default]\" "

# Always ping 3 times
alias ping="command ping -c 3"

# MacVim is Vim
alias vim="command mvim"

# Vim
alias vi="/usr/local/opt/macvim/MacVim.app/Contents/MacOS/Vim"

# rcm
alias rcup="command rcup -v"
alias rcdn="command rcdn -v"

# Alias grep with those options
alias grep="command grep -I --exclude=.git{,ignore,modules} --exclude-dir=.{cvs,git,hg,svn} --color=auto"
