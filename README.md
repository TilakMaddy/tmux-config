# tmux-config

My tmux configuration with Catppuccin Mocha theme, vim-style pane navigation, and system status modules.

## Features

- **Prefix**: `C-k`
- **Theme**: Catppuccin Mocha
- **Pane navigation**: `h/j/k/l` (vim-style)
- **Mouse**: enabled
- **Status bar**: application, cpu, session, uptime, battery
- **Vi mode**: for copy mode
- **1-indexed**: windows and panes start at 1

## Installation

```bash
git clone https://github.com/TilakMaddy/tmux-config.git
cd tmux-config
./install.sh
```

Then open tmux and press `C-k` + `I` (capital I) to install plugins.

## Where files get installed

| What | Path |
|------|------|
| Config (symlink) | `~/.tmux.conf` -> `<repo>/tmux.conf` |
| TPM (plugin manager) | `~/.tmux/plugins/tpm/` |
| Catppuccin theme | `~/.tmux/plugins/tmux/` |
| tmux-cpu | `~/.tmux/plugins/tmux-cpu/` |
| tmux-battery | `~/.tmux/plugins/tmux-battery/` |

## Can I delete the repo after installation?

**No.** The install script creates a symlink from `~/.tmux.conf` pointing to `tmux.conf` inside this repo. If you delete the repo, the symlink breaks and tmux loses its config.

If you want to decouple from the repo, copy instead of symlink:

```bash
cp tmux.conf ~/.tmux.conf
```

After that, the repo can be safely deleted (plugins in `~/.tmux/plugins/` are independent).

## Reload config

Inside tmux, press `C-k` + `r` to reload the config.
