echo 'Generating settings.json...';
cat ~/Library/Application\ Support/Code/User/settings.json;

echo 'Generating extensions install script...';
code --list-extensions | xargs -L 1 echo code --install-extension;
