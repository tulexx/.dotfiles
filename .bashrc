#     __               __
#    / /_  ____ ______/ /_  __________
#   / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  / /_/ / /_/ (__  ) / / / /  / /__
# /_.___/\__,_/____/_/ /_/_/   \___/
#

for FN in $HOME/.local/bashrc.d/*.sh
do
    . "$FN"
done

export BASH_RC_LOADED=true
