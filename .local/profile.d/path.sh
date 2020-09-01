LOCAL_BIN_DIRS="$(find -L "$HOME/.local/bin" -type d | tr '\n' ':')"

if [[ "$PATH" != *"$LOCAL_BIN_DIRS"* ]]; then
  export PATH="$LOCAL_BIN_DIRS$PATH"
fi

