#!/bin/bash

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Now need to setup ssh key with Github to pull down the repo to get configurations, etc.
echo "Dotfiles bootstrapped. Configure Github ssh keys to pull repo by running the following command:"
echo "git clone git@github.com:traviscaro/dotfiles.git $HOME/.dotfiles"
echo "chmod +x $HOME/.dotfiles/macos/install.sh && chmod +x $HOME/.dotfiles/link.sh"
echo "source $HOME/.dotfiles/macos/install.sh && source $HOME/.dotfiles/link.sh"
