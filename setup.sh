#!/usr/bin/env bash
ssh-keygen -t rsa

# Check to see if SSH keys exist on machine, generate if not
# ls -al ~/.ssh
# $ ssh-keygen -t rsa -C "your_email@example.com"
echo "SSH key generated, please link to Github @ \n"
echo "https://github.com/account/ssh \n"
read "?After complete, press [Enter] to continue"

# Verify xcode is installed, if not install
# /usr/bin/xcodebuild -version
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew

# Install and configure git
echo "Installing Git."
brew install git

# {git-extra, git-flow}
echo "Installing git utilities"
brew install legit

echo "Setting configuration variables."
git config --global user.name "Austin Ma"
git config --global user.email ma.austin.1028@gmail.com

# Install homebrew packages and cleanup

# Install homebrew cask

# Install apps through cask



# Install ZSH


# Zshell dotfiles and settings

apps=(
discord
dropbox
google-chrome
iterm2
microsoft-office
spotify
virtualbox
visual-studio-code
zoomus
)

brews=(
  htop
  postgresql
  python
  python@3.8
  ripgrep
  speedtest-cli
  sqlite
  tree
  wget
  youtube-dl
)



# INSTALL PYTHON through pyenv (not touching OS level python)
brew install pyenv
  # Install python 3.7.4 through pyenv
pyenv install 3.7.4
  # Set 3.7.4 as global default version for pyenv environments
pyenv global 3.7.4
    # pyenv version (verifies)


# Uninstall default applications


# Adjust Dock (Icon size, blank space, lhs of screen, which icons appear)


# Adjust toolbar at top (Bluetooth, Wifi, Dropbox icons)


# Miscellaneous settings (Turn off Siri, adjust touchbar, keyboard shortcuts)