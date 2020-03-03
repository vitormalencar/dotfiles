#!/usr/bin/env bash

# VitorAlencar 🍺 Brewfile
echo ----------------------------------
echo Install all AppStore Apps at first! 🚨
echo ----------------------------------

# No solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install dependencies
echo ----------------------------------
echo Installing Mobile Env 📱
echo ----------------------------------

brew install watchman
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

