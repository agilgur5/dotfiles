#!/bin/bash
# initial setup script for macOS
set -e; # exit immediately if any errors occur

echo 'Installing Xcode command-line tools...'
xcode-select --install;

pushd Homebrew;
bash install.sh;
popd;

pushd Bash;
bash install.sh;
popd;


echo 'Configuring applicatins...';

# add Git global configs
cp Git/.gitignore_global ~/;
cp Git/.gitconfig ~/;

# add Karabiner config
cp Karabiner/karabiner.json ~/.config/karabiner/karabiner.json;

# add Vim config
cp Vim/.vimrc ~/.vimrc;

pushd VSCode;
bash install.sh;
popd;

echo 'All done! :)';
