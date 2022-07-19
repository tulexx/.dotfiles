#                       _____ __
#     ____  _________  / __(_) /__
#    / __ \/ ___/ __ \/ /_/ / / _ \
#   / /_/ / /  / /_/ / __/ / /  __/
#  / .___/_/   \____/_/ /_/_/\___/
# /_/
#

for FN in "$HOME/.local/profile.d/"*.profile
do
    . "$FN"
done

export PROFILE_LOADED=true
#blabla
