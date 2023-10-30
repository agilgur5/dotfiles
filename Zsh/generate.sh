#!/bin/bash
echo 'Generating ~/.zshrc...';
cp ~/.zshrc .zshrc;
cp ~/.zshrc_work .zshrc_work;

echo 'Generating asdf config...';
cp ~/.tool-versions .tool-version;
cp ~/.asdfrc .asdfrc;
