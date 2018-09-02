echo 'Configuring VSCode...';
cp settings.json ~/Library/Application\ Support/Code/User/settings.json;

echo 'Installing VSCode Extensions...';
bash extensions.sh;
