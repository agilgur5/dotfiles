#!/bin/bash
echo 'Generating Starship config...';
cp ~/.config/starship.toml starship.toml;

echo 'Generating asdf / mise config...';
cp ~/.config/mise/config.toml mise.toml;
