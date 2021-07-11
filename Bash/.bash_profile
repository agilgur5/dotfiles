
# shellcheck shell=bash

# Add VSCode to $PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Set VSCode to default $EDITOR
export EDITOR="code --wait"


# Bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


# add fancy Bash prompt with starship.rs
# does git, k8s, AWS, Gcloud, Terraform, etc, etc out-of-the-box
eval "$(starship init bash)"


# JS/Node configuration
export NVM_DIR="$HOME/.nvm"
# load nvm
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  . "/usr/local/opt/nvm/nvm.sh"
fi
# load nvm bash_completion
if [ -s "/usr/local/opt/nvm/etc/bash_completion" ]; then
  . "/usr/local/opt/nvm/etc/bash_completion"
fi


# Python configuration
# load pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# load work-specific config on top
source ~/.bash_profile_work
