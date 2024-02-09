#!/bin/bash

# Install Xcode Command Line Tools
echo "Installing XCode Command Line Tools..."
xcode-select --install
echo "XCode Command Line Tools installed"

# Install Homebrew
# TODO: Check if installed first?
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "Homebrew installed"

# Now need to setup ssh key with Github to pull down the repo to get configurations, etc.
echo "macOS dotfiles bootstrapped. Configure Github ssh keys to pull repo by running the following command: \n\n"
echo "git clone git@github.com:traviscaro/dotfiles.git $HOME/.dotfiles"
echo "chmod +x $HOME/.dotfiles/macos/install.sh && chmod +x $HOME/.dotfiles/link.sh"
echo "source $HOME/.dotfiles/macos/install.sh && source $HOME/.dotfiles/link.sh"
