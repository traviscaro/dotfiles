# Dotfiles

This repo contains the configurations I use for my various system configurations.

## Getting Started

**For macOS / Linux**
This repo using [GNU Stow](https://www.gnu.org/software/stow/) to symlink dotfiles to their appropriate locations. 

Without custom overrides, this repo expects to live in `$HOME/.dotfiles`. For initial setup call the OS `bootstrap.sh` and `install.sh` scripts. Then, call `link.sh` from the root directory to create symlinks to all appropriate config locations using [Stow](https://www.gnu.org/software/stow/).

**For Windows**
At this time the intent is only to include a `winget` app installation script and to not actually truly setup dotfiles for Windows as we do not intend to use that as a development environment.

## Useful Resources

- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
