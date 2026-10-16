# term-config

Setup for a new Mac. Nothing secret lives here — SSH keys and wallets travel separately.

## Order

1. Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Everything else from brew: `brew bundle --file=brew/Brewfile` (CLI tools, apps, VS Code extensions)
3. oh-my-zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
4. nvm: install from https://github.com/nvm-sh/nvm, then `nvm install 22 && nvm install 20 && nvm install 21.6.1`
5. Dotfiles: copy `zsh/.zshrc`, `zsh/.zprofile`, `zsh/.zshenv` and `git/.gitconfig` to `~`
6. VS Code: copy `vscode/settings.json`, `keybindings.json`, `tasks.json` to `~/Library/Application Support/Code/User/`
7. iTerm2: Settings → General → Settings → "Load settings from a custom folder" → `iterm/`
8. Neovim: copy `nvim/` to `~/.config/nvim`; fix `g:coc_node_path` in `init.vim` to the installed Node
9. Font: install `font/SFMono Regular Nerd Font Complete.otf`

`.zshenv` and `init.vim` pin Node versions by path — check them after step 4.
