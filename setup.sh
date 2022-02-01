#!/bin/zsh
# Uninstall any existing Homebrew installation.
if ! command -v brew &> /dev/null; then
	curl -o uninstall.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh
	chmod +x uninstall.sh
	./uninstall.sh -f -q
	rm uninstall.sh
	# Remove any remaining traces of the prior Homebrew installation.
	sudo rm -rf /usr/local/{Cellar,Homebrew,bin,etc,share,var}
fi
# Install Homebrew fresh.
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Run the Homebrew doctor as a sanity check.
brew doctor
read -p "Press ENTER to continue the installation if and only if the doctor passes with \"Your system is ready to brew.\"\n" -n1 -s
# List installed stuff for confirmation.
brew list
read -p "Press ENTER to continue the installation if and only if there are no installed packages.\n" -n1 -s
# Clone the nhubbard/homebrew-gu repository from GitHub.
git clone https://github.com/nhubbard/homebrew-gu
# Enter the directory.
pushd ~/homebrew-gu
# Run `brew bundle`.
brew bundle
# Pop the stack.
popd