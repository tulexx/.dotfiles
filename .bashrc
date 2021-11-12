#     __               __
#    / /_  ____ ______/ /_  __________
#   / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  / /_/ / /_/ (__  ) / / / /  / /__
# /_.___/\__,_/____/_/ /_/_/   \___/
#

# If bashrc is loaded, do nothing (return, because of sourcing)
[ "${BASH_RC_LOADED}" = "true" ] && return

# $HOME/.local/bashrc.d contains files to source.
# Prefix with number to set sourcing order.

for FN in "$HOME/.local/bashrc.d"/*.bashrc
do
    . "$FN"
done

# Set bashrc loaded
export BASH_RC_LOADED=true
