#!/bin/zsh
# Uninstall any existing Homebrew installation.
wget https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh
chmod +x uninstall.sh
./uninstall.sh -f -q
# Remove any remaining traces of the prior Homebrew installation.
sudo rm -rf /usr/local/{Cellar,Homebrew,bin,etc,share,var}
# Install Homebrew freshly.
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# List installed stuff for confirmation.
brew list
echo "Press ENTER to continue the installation if and only if there are no installed packages."
read -s -N 1 -t 1 key
if [[ $key ]]
# Clone the nhubbard/homebrew-gu repository from GitHub.
git clone https://github.com/nhubbard/homebrew-gu
# Enter the directory.
pushd ~/homebrew-gu
# Run `brew bundle`.
brew bundle
# Pop the stack.
popd