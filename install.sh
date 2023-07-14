#!/bin/bash
# initial setup script for macOS
set -e; # exit immediately if any errors occur

if ! xcode-select -p 1>/dev/null 2>&1; then
  echo 'Installing Xcode command-line tools...';
  xcode-select --install;
fi

pushd Homebrew > /dev/null;
bash install.sh;
popd > /dev/null;

pushd Shell > /dev/null;
bash install.sh;
popd > /dev/null;

pushd Bash > /dev/null;
bash install.sh;
# make sure future commands (like `code --install...`) can use new path etc
source ~/.bash_profile;
popd > /dev/null;

pushd Zsh > /dev/null;
bash install.sh;
popd > /dev/null;

pushd Ssh > /dev/null;
bash install.sh;
popd > /dev/null;

echo 'Configuring applications...';

pushd Git > /dev/null;
bash install.sh;
popd > /dev/null;

# add Vim config
cp Vim/.vimrc ~/.vimrc;

pushd VSCode > /dev/null;
bash install.sh;
popd > /dev/null;

echo 'All done! :)';
