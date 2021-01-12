echo 'Configuring Bash...';
sudo cp .bash_profile ~/.bash_profile;

echo 'Configuring Starship prompt...';
mkdir -p ~/.config;
sudo cp starship.toml ~/.config/starship.toml;
