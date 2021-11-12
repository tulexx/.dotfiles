#                       _____ __
#     ____  _________  / __(_) /__
#    / __ \/ ___/ __ \/ /_/ / / _ \
#   / /_/ / /  / /_/ / __/ / /  __/
#  / .___/_/   \____/_/ /_/_/\___/
# /_/
#

# If profile is loaded, do nothing (return, because of sourcing)
[ "${PROFILE_LOADED}" = "true" ] && return

# $HOME/.local/profile.d contains files to source.
# Prefix with number to set sourcing order.

for FN in "$HOME/.local/profile.d/"*.profile
do
    . "$FN"
done

export PROFILE_LOADED=true
