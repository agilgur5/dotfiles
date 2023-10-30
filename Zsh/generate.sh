#!/bin/bash
echo 'Generating ~/.zshrc...';
cp ~/.zshrc .zshrc;
cp ~/.zshrc_work .zshrc_work;

echo 'Generating asdf / rtx config...';
cp ~/.config/rtx/config.toml .rtx.toml;
