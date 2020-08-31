#!/usr/bin/env bash

shopt -s expand_aliases

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles3/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
