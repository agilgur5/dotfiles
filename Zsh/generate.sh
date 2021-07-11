#!/bin/bash
echo 'Generating ~/.zprofile...';
cp ~/.zprofile .zprofile;
cp ~/.zprofile_work .zprofile_work;

echo 'Generating ~/.config/starship.toml...';
cp ~/.config/starship.toml starship.toml;
