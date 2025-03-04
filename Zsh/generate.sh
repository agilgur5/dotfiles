#!/bin/bash
echo 'Generating ~/.zshrc...';
cp ~/.zshrc .zshrc;
cp ~/.zshrc_work .zshrc_work;

echo 'Generating asdf / mise config...';
cp ~/.config/mise/config.toml .mise.toml;
