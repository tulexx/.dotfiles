if [ -x /usr/bin/gnome-keyring-daemon ]
then
    if [ -n "$DESKTOP_SESSION" ]
    then
      eval $(gnome-keyring-daemon --start)
      export SSH_AUTH_SOCK
    fi
fi
