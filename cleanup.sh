#!/bin/bash

# uninstall git
brew uninstall git

# uninstall internet browser
brew uninstall --cask google-chrome
brew uninstall --cask helium-browser

# uninstall terminal emulator
brew uninstall --cask ghostty
#brew uninstall --cask kitty # optional alternative
brew uninstall --cask font-jetbrains-mono-nerd-font

# uninstall vs code
brew uninstall --cask visual-studio-code

# uninstall container software
brew uninstall podman
#brew uninstall docker¡«
#brew uninstall --cask orbstack

# uninstall gcloud cli
brew uninstall --cask gcloud-cli

# uninstall logi-options+ for MX Master 4 Mouse
brew uninstall --cask logi-options+

# remove dotfiles
rm ~/zsh/.zshrc
rm ~/Library/Application\ Support/Code/User/settings.json
rm ~/Library/Application\ Support/Code/User/keybindings.json
rm ~/Library/Application\ Support/com.mitchellh.ghostty/ghostty.conf

# remove workspace directory
rm -r ~/Desktop/Development