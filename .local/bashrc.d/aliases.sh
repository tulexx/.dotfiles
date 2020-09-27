alias \
  ls='ls --color=auto' \
  ll="ls -l" \
  la="ls -alh" \
  lah="ls -alh" \
  grep='grep --color=auto' \
  fgrep='fgrep --color=auto' \
  egrep='egrep --color=auto' \
  ..='cd ..' \
  ...='cd ../..' \
  ....='cd ../../..' \
  !!='sudo !!' \
  cls='clear' \
  gs="git status" \
  ga="git add" \
  gc="git commit" \
  gl="git log" \
  gp="git push" \
  glist="git stash list"
  vim="nvim"

# Private aliases
privateAliases="$HOME/.bash_private_aliases"
if [[ -e $privateAliases ]]
then
  source $privateAliases
fi
