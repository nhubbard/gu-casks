require "socket"

brew "mas"

# Cask contains binary apps; Cask Versions contains a dependency for
# Visual Studio for Mac.
tap "homebrew/cask"
tap "homebrew/cask-versions"

# Install common casks.
cask "intellij-idea-ce"
cask "microsoft-office"
cask "visual-paradigm"
cask "google-chrome"
cask "visual-studio"
cask "unity-hub"
cask "android-studio"
cask "gitkraken"
cask "r"
cask "netbeans"
cask "github"
cask "iterm2"
cask "cakebrew"
cask "alfred"

# These casks are only installed if the system name is "z336dais.local".
# Hint: that's the teacher's computer!
if Socket.gethostname == "z336dais.local"
	tap "nhubbard/homebrew-gu"
	cask "zoom"
	cask "dropbox"
	cask "justinmind"
	cask "huddly"
end

# Install apps from the App Store, as necessary.
mas "Xcode", id: 497799835