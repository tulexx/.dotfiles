SCRIPT_SHELL=$(readlink /proc/$$/exe) && [ "${SCRIPT_SHELL#/usr/bin/}" != "bash" ] && return # not bash 

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
