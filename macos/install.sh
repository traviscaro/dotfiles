#!/bin/bash

# Packages
packages=(
  docker
  doppler
  gh
  neovim
  nvm
  pnpm
  redis
  stow
  supabase
  tmux
  transmission-cli
  z
)

# Apps
apps=(
  adobe-acrobat-reader
  alacritty
  # android-studio
  # anylist
  bitwarden
  # boom-3d
  cleanshot
  clickup
  datagrip
  # discord
  # figma
  # firefox
  # font-hack-nerd-font
  # gather
  # google-chrome
  # google-drive
  # grammarly
  # iterm2
  keyboardcleantool
  maccy
  messenger
  # microsoft-teams
  # mongodb-compass
  mullvad-browser
  ngrok
  # nordvpn
  # parallels
  rectangle
  # rider
  rocket
  sf-symbols
  slack
  spotify
  streamlabs-obs
  # transmission
  visual-studio-code
  vlc
  zoom
)
# TODO: notion
# TODO: ticktick
# TODO: vanilla
# TODO: jetbrains toolbox
# TODO: postman
# TODO: arc browser
# TODO: docker
# TODO: da vinci resolve?
# TODO: affinity design tools
# TODO: canva
# TODO: colorslurp

# Loop through the array and install each package
for package in "${packages[@]}"; do
  brew install "$package"
done

# Loop through the array and install each app
for app in "${apps[@]}"; do
  brew install "$app"
done

# TODO: Setup node env with nvm
