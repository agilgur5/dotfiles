#!/bin/zsh
# shellcheck shell=bash  # actually zsh but shellcheck doesn't recognize it
echo 'Configuring Zsh...';
sudo cp .zshrc ~/.zshrc;
sudo cp .zshrc_work ~/.zshrc_work;

echo 'Configuring asdf / mise...';
sudo mkdir -p ~/.config/mise/;
sudo cp .mise.toml ~/.config/mise/config.toml;

# fix any owner issues with completion, c.f. https://stackoverflow.com/a/22753363/3431180
compaudit | xargs chmod g-w
