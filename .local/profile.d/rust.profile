#!/usr/bin/env bash

export RUSTUP_HOME="$HOME/.local/share/rustup"
export CARGO_HOME="$HOME/.local/share/cargo"
[ -f  "$HOME/.local/share/cargo/env" ] && source "$HOME/.local/share/cargo/env"
