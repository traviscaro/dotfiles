# Overview

This repo is where I store my personal environment configuration files. I use a bare git repo to manage my dotfiles. This allows me to easily manage my dotfiles across multiple machines and keep them in sync.

This approach and docs are for personal use and inspired by: [Atlassian's dotfile tutorial](https://www.atlassian.com/git/tutorials/dotfiles).

## Starting from scratch

- Let's create a `~/.dotfiles` folder as a bare repository.

```bash
git init --bare $HOME/.dotfiles
```

- Create an alias for the current shell session to use the bare repo.

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

- Set the `showUntrackedFiles` flag to `no` on this specific (local) repository.

```bash
dotfiles config --local status.showUntrackedFiles no
```

- Also you can add the alias definition by hand to your .zshrc or use the the fourth line provided for convenience

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

This has also been packaged into `setup.sh` for convenience.

After you've executed the setup any file within the $HOME folder can be versioned with normal commands, replacing git with your newly created config alias, like:

## Installation

Run the following commands:

```bash
# Add the alias to your .bashrc or .zshrc and current shell scope
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc

# Add the .dotfiles folder to .gitignore to avoid recursion issues
echo ".dotfiles" >> .gitignore

# Clone your dotfiles into a bare repository in a "dot" folder of your $HOME
git clone --bare <git-repo-url> $HOME/.dotfiles

# Checkout the actual content from the bare repository to your $HOME
dotfiles checkout

# Set the flag showUntrackedFiles to no on this specific (local) repository
dotfiles config --local status.showUntrackedFiles no
```

## Useful Links

- [bare git repo dotfiles tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
- [dotfiles on github](https://dotfiles.github.io/)