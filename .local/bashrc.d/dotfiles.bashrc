SCRIPT_SHELL=$(readlink /proc/$$/exe) && [ "${SCRIPT_SHELL#/usr/bin/}" != "bash" ] && return # not bash 

shopt -s expand_aliases

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
