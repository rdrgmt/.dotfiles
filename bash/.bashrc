#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
if [ "`id -u`" -eq 0 ]; then
    PS1="\[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W] \[\e[0m\]"
else
    PS1="\[\e[1m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\w] \[\e[0m\]"
fi

# golang
GOPATH=/home/mfrdrgs/.go
export GOPATH
PATH=$PATH:$GOPATH/bin # add GOPATH/bin to PATH for scripting

# firefox wayland
MOZ_ENABLE_WAYLAND=1
export MOZ_ENABLE_WAYLAND
