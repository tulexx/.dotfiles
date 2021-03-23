# set full 256 colors for terminal
[ "$COLORTERM" == "xfce4-terminal"  ] &&  export TERM=xterm-256color
[ -f ~/.config/terminalcolorrc ] && source ~/.config/terminalcolorrc
