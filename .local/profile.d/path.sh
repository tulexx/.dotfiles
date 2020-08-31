LOCAL_BIN_DIRS="$(find -L "$HOME/.local/bin" -type d | tr '\n' ':')"
export PATH="$LOCAL_BIN_DIRS$PATH"

