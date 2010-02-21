# .zshenv

PATH="~/bin:$PATH" # "/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/sw/bin:/opt/local/bin:/opt/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/Applications/SCM.app/Contents/Resources/scm/bin/:/opt/local/Library/Frameworks/Python.framework/Versions/2.4/bin"
export PATH

test -d /sw/bin && source /sw/bin/init.sh

if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && . /etc/bashrc
fi

alias svn-st="source ~/Projects/shell-scripts/_svn-st"
alias hg-st="source ~/Projects/shell-scripts/_hg-st"

EVENT_NOKQUEUE=1
VISUAL="mate -w"
EDITOR="mate -w"
MANSECT=1:3tcl:n:l:8:3:2:3posix:3pm:3perl:5:4:9:6:7
EMAIL="Andrey Tarantsov <andreyvit@gmail.com>"

HISTFILE=$HOME/.zhist
HISTSIZE=1000000
SAVEHIST=1000000


export PATH EDITOR VISUAL EMAIL MANSECT EVENT_NOKQUEUE
