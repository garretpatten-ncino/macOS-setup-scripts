#!/bin/bash

### Configuration ###

# Git config
if [[ ! -f "$HOME/.gitconfig" ]]; then
    git config --global credential.helper store
    git config --global http.postBuffer 157286400
    git config --global pack.window 1
    git config --global user.email "garret.patten@proton.me"
    git config --global user.name "Garret Patten"
    git config --global pull.rebase false
fi

# Neovim setup
if [[ ! -d "$HOME/.config/nvim/" ]]; then
    mkdir -p "$HOME/.config/"
    cp -r "$(pwd)/src/dotfiles/nvim/" "$HOME/.config/nvim/"
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
    brew install tree-sitter
fi

# Vim config
if [[ ! -f "$HOME/.vimrc" ]]; then
    cp "$(pwd)/src/dotfiles/vim/.vimrc" "$HOME/.vimrc"
fi

### Runtimes ###

# Node and npm
if [[ ! -d "/usr/local/cellar/node/" ]]; then
    brew install node
fi

# Node Version Manager
if [[ ! -d "/usr/local/cellar/nvm/" ]]; then
    brew install nvm
fi

# Python and pip
brew install python@3.12

### Dev Tools ###

# TODO: Install Docker and Docker-Compose

# GitHub CLI
if [[ ! -d "/usr/local/cellar/gh/" ]]; then
    brew install gh
fi

# Postman
if [[ ! -d "/usr/local/Caskroom/postman/" ]]; then
    brew install --cask postman
fi

# Semgrep
if [[ ! -d "/usr/local/cellar/semgrep/" ]]; then
    brew install semgrep
fi

# Shellcheck
if [[ ! -d "/usr/local/cellar/shellcheck/" ]]; then
    brew install shellcheck
fi

# Sourcegraph App
if [[ ! -d "/usr/local/cellar/sourcegraph/" ]]; then
    brew install sourcegraph/app/sourcegraph
fi

# Sourcegraph CLI
if [[ ! -d "/usr/local/cellar/src-cli/" ]]; then
    brew install src-cli
fi

# VS Code
if [[ ! -d "/usr/local/Caskroom/visual-studio-code/" ]]; then
    brew install --cask "$app"
fi
