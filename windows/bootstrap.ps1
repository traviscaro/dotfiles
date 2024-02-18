# Install git to be able to even pull the repo
winget install Git.Git

# Setup ssh keys
ssh-keygen

# Output the generated ssh key to the console to manually copy to Github in order to pull this dotfiles repo
Write-Output "Copy the following ssh key to your Github account to access and download the dotfiles repo."
Get-Content ./ssh/id_rsa.pub

Write-Output "\n\n"
Write-Output "Then run the following command:"
Write-Output "git clone git@github.com:traviscaro/dotfiles.git ~/.dotfiles"