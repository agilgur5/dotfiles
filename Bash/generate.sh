#!/bin/bash
echo 'Generating ~/.bash_profile...';
cp ~/.bash_profile .bash_profile;
cp ~/.bash_profile_work .bash_profile_work;

echo 'Generating ~/.config/starship.toml...';
cp ~/.config/starship.toml starship.toml;
