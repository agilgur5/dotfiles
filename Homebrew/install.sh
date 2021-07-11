#!/bin/bash
echo 'Installing Hombrew...';
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

echo 'Installing deps from Brewfile...';
brew bundle;
