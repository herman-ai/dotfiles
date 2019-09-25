# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# Have google chrome always use local disk
#alias google-chrome="google-chrome --user-data-dir=/net/`hostname -s`/mnt/localdata/$USER/.config/google-chrome"
#alias google-chrome-stable="google-chrome-stable --user-data-dir=/net/`hostname -s`/mnt/localdata/$USER/.config/google-chrome"

# To enable core dump
# ulimit -c unlimited

if [[ $(hostname -f) == *"cerebras.aws" ]]; then
    . ~/.bash_cerebras
fi
. ~/.bash_herman

alias ls='ls --color'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
