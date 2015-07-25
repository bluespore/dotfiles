#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# homebrew basics
brew tap homebrew/dupes
brew tap homebrew/versions
brew install homebrew/dupes/grep

# useful utilities
brew install grc coreutils spark wget

# Install other useful binaries
brew install ack git git-flow node tree vim --override-system-vi dnsmasq mysql rbenv rbenv-gem-rehash

# install PHP 5.5 and composer
brew tap homebrew/homebrew-php
brew install php55 php55-crypto homebrew/php/composer

# brew cask
tap caskroom/cask
install brew-cask
cask install rdio google-chrome box-sync firefox opera alfred iterm2 slack harvest 1password vlc vagrant dropbox spectacle sequel-pro

# rbenv
brew install rbenv ruby-build

exit 0