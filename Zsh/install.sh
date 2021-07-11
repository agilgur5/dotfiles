echo 'Configuring Zsh...';
sudo cp .zprofile ~/.zprofile;
# fix any owner issues with completion, c.f. https://stackoverflow.com/a/22753363/3431180
compaudit | xargs chmod g-w


echo 'Configuring Starship prompt...';
mkdir -p ~/.config;
sudo cp starship.toml ~/.config/starship.toml;
