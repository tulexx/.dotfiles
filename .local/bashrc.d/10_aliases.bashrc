#!/usr/bin/env bash

alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -alh"
alias lah="ls -alh"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias !!='sudo !!'
alias cls='clear'
alias vim="nvim"
alias nb="newsboat"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gl="git log"
alias gp="git push"
alias glist="git stash list"

# Private aliases

## Backwards compatibility
[ -e "$HOME/.bash_private_aliases" ] && . "$HOME/.bash_private_aliases"

currentDir=$(dirname -- "$( readlink -f -- "$0" )")
for alias in "$currentDir"/*.alias
do
  [ -f "$alias" ] || continue
  . "$alias"
done
