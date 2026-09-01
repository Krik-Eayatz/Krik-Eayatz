#!/bin/bash

$ brew uninstall --force $(brew list)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# remove dotfiles
stow -D

# remove workspace directory
rm -r ~/Desktop/Development
