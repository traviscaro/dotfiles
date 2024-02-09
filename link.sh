#!/bin/bash

# Save source directory. We're going to navigate away from here, but we want to come back
start=$(pwd)

# Use stow to create symlinks for all managed applications
cd ~/.dotfiles
stow zsh
stow git
stow neovim 
stow alacritty 
stow tmux 
stow bash

# Go back to where we came from
cd $start