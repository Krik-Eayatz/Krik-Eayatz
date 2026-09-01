#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/erikkayatz/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> /Users/erikkayatz/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

brew install stow

# distribute dotfiles
stow zsh
stow tmux
stow homebrew
stow ghostty
stow neovim

# install homebrew packages
brew bundle check || brew bundle install

# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# create workspace directory
mkdir -p ~/Desktop/Development/Remote\ Repositories/Mercer
mkdir -p ~/Desktop/Development/Remote\ Repositories/Private
mkdir -p ~/Desktop/Development/Local\ Repositories/Mercer
mkdir -p ~/Desktop/Development/Local\ Repositories/Private
