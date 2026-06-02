#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/erikkayatz/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> /Users/erikkayatz/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# install git
brew install git

# install internet browser
brew install --cask google-chrome
brew install --cask helium-browser

# install terminal emulator
brew install --cask ghostty
#brew install --cask kitty # optional alternative
brew install --cask font-jetbrains-mono-nerd-font

# install vs code
brew install --cask visual-studio-code
code --install-extension catppuccin.catppuccin-vsc
code --install-extension catppuccin.catppuccin-vsc-icons
code --install-extension ms-vscode-remote.remote-containers

# install container software
brew install podman
#brew install docker
#brew install --cask orbstack

# install gcloud cli and authenticate
brew install --cask gcloud-cli
gcloud auth login

# install logi-options+ for MX Master 4 Mouse
brew install --cask logi-options+

# distribute dotfiles
cp zsh/.zshrc ~/
cp vscode/settings.json ~/Library/Application\ Support/Code/User/
cp vscode/keybindings.json ~/Library/Application\ Support/Code/User/
cp ghostty/ghostty.conf ~/Library/Application\ Support/com.mitchellh.ghostty/

# create workspace directory
mkdir -p ~/Desktop/Development/Remote\ Repositories/Mercer
mkdir -p ~/Desktop/Development/Remote\ Repositories/Private
mkdir -p ~/Desktop/Development/Local\ Repositories/Mercer
mkdir -p ~/Desktop/Development/Local\ Repositories/Private