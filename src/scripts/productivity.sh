#!/bin/bash

# Claude
if [[ ! -d "/opt/homebrew/Caskroom/claude/" ]]; then
    brew install --cask claude
fi

# Notion
if [[ ! -d "/opt/homebrew/Caskroom/notion/" ]]; then
    brew install --cask notion
fi

# Proton Drive
if [[ ! -d "usr/local/Caskroom/proton-drive/" ]]; then
    brew install --cask proton-drive
fi

# Proton Mail
if [[ ! -d "usr/local/Caskroom/proton-mail/" ]]; then
    brew install --cask proton-mail
fi

# Raycast
if [[ ! -d "usr/local/cellar/raycast/" ]]; then
    brew install raycast
fi

# Todoist
if [[ ! -d "/usr/local/Caskroom/todoist/" ]]; then
    brew install --cask todoist
fi

# Zoom
if [[ ! -d "usr/local/Caskroom/zoom/" ]]; then
    brew install --cask zoom
fi
