#     __               __
#    / /_  ____ ______/ /_  __________
#   / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  / /_/ / /_/ (__  ) / / / /  / /__
# /_.___/\__,_/____/_/ /_/_/   \___/
#

# It is sourced every time $HOME/.profile is sourced
# e.g. in tmux

# $HOME/.local/bashrc.d contains files to load.
# Prefix with number to set sourcing order.

for FN in "$HOME/.local/bashrc.d"/*.bashrc
do
    . "$FN"
done

# Set bashrc loaded
export BASH_RC_LOADED=true
