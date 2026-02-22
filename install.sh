#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Symlink tmux.conf
if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ]; then
    echo "Backing up existing ~/.tmux.conf to ~/.tmux.conf.bak"
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi
ln -s "$SCRIPT_DIR/tmux.conf" ~/.tmux.conf
echo "Linked tmux.conf"

# Install TPM if not present
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "Installing TPM..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "TPM already installed"
fi

echo ""
echo "Done! Start tmux and press prefix + I to install plugins."
