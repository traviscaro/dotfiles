# Let's create a `~/.dotfiles` folder as a bare repository.
git init --bare $HOME/.dotfiles

# Create an alias for the current shell session to use the bare repo.
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Set the `showUntrackedFiles` flag to `no` on this specific (local) repository.
dotfiles config --local status.showUntrackedFiles no

# Also you can add the alias definition by hand to your .zshrc or use the the fourth line provided for convenience
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc