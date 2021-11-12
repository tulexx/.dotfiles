SCRIPT_SHELL=$(readlink /proc/$$/exe) && [ "${SCRIPT_SHELL#/usr/bin/}" != "bash" ] && return # not bash 

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend
