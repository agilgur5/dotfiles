#!/bin/bash
if ! command -v brew 1>/dev/null 2>&1; then
  echo 'Installing Hombrew...';
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

echo 'Installing deps from Brewfile...';
brew bundle;
