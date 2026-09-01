# MacOS Setup

## Manual Setup

### 1. Installing Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/YOUR_USERNAME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> /Users/YOUR_USERNAME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv zsh)"
```
These commands install homebrew and adds it to your .zprofile file so that you can use it in your current and future shell. Make sure that curl is installed before you run the commands.

### 2. Installing Stow
```bash
brew install stow
```
This command installs stow so that we can use it later for setting up the config files for NeoVim, tmux, zsh and ghostty. But why stow? Stow helps us putting the configuration files into the right directories, without copying them manually. It creates symlinks that links the file in this repository to the target directory so that you only have to modify files in this repository to change your configuration. That eliminates the need for replacing the files every time you change something in your configuration.

### 3. Setting up Configurations
```bash
stow --target="$HOME" zsh
stow --target="$HOME" tmux
stow --target="$HOME" homebrew
stow --target="$HOME" ghostty
stow --target="$HOME" neovim
```
Make sure you are in the ```./stow``` directory when you use the stow command. The directories are setup so that stow knows where to put the files. If you want to add a new configuration create a folder with the application name followed by the folder in your home directory. For example: ```ghostty/.config/ghostty/``` stores every file in that folder in the ```~/.config/ghostty/``` directory. Another example: zsh/ will store every file in tha folder in the ```~/``` directory.

### 4. Installing all Homebrew Packages
```bash
brew bundle check || brew bundle install
```
This command checks if packages are already installed and if not it installs all packages inside the Brewfile we symlinked in the previews step.

### 5. Installing the tmux Plugin Manager
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
This command clones the tmux plugins manager and puts it into the tmux config directory.

### 6. (Optional) Creating Development Directories
```bash
mkdir -p ~/Desktop/Development/Remote\ Repositories/Mercer
mkdir -p ~/Desktop/Development/Remote\ Repositories/Private
mkdir -p ~/Desktop/Development/Local\ Repositories/Mercer
mkdir -p ~/Desktop/Development/Local\ Repositories/Private
```
This command creates the following directories: ```~/Desktop/Development/Remote Repositories/Mercer``` , ```~/Desktop/Development/Remote Repositories/Private``` , ```~/Desktop/Development/Local Repositories/Mercer``` , and ```~/Desktop/Development/Local Repositories/Private``` . I also created aliasis in the .zshrc file so that i can jump into these directories without always typing the full path.

## Automatic Setup

The setup.sh script inside the ```./macos/``` folder runs all commands above automatically. Make sure your user name matches the username in the "Installing Homebrew" step. The cleanup.sh script in the same directory removes all installed homebrew packages, uninstalls homebrew, removes all symlinks created with stow and at last removes the ```~/Desktop/Development/``` directory and all subdirectories. Make sure to give the scripts the neccesary permissions before running them:
```bash
chmod +x ./setup.sh
chmod +x ./cleanup.sh
```