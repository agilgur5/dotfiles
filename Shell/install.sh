#!/bin/bash
echo 'Configuring Starship prompt...';
mkdir -p ~/.config;
sudo cp starship.toml ~/.config/starship.toml;

echo 'Configuring asdf / mise...';
sudo mkdir -p ~/.config/mise/;
sudo cp mise.toml ~/.config/mise/config.toml;
