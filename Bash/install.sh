echo 'Configuring Bash...';
sudo cp .bash_profile ~/.bash_profile;
sudo cp .bash_profile_work ~/.bash_profile_work;

echo 'Configuring Starship prompt...';
mkdir -p ~/.config;
sudo cp starship.toml ~/.config/starship.toml;
