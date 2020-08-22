#!/usr/bin/env bash

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles2/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
