#!/bin/bash
# initial setup script for macOS
set -e; # exit immediately if any errors occur

echo 'Installing Xcode command-line tools...'
xcode-select --install;

echo 'Installing Hombrew...';
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

echo 'Installing (non-system) Python and pip...';
brew install python2;


echo 'Configuring applicatins...';

# add Git global configs
cp Git/.gitignore_global ~/;
cp Git/.gitconfig ~/;

# add Karabiner config
cp Karabiner/karabiner.json ~/.config/karabiner/karabiner.json;

# add Vim config
cp Vim/.vimrc ~/.vimrc;

# add VSCode config
cp VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json;

echo 'Installing VSCode Extensions...';
bash VSCode/extensions.sh;

echo 'All done! :)';
