
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

# load asdf / mise version manager (https://github.com/jdx/mise#quickstart)
eval "$(mise activate bash)"


# load work-specific config on top
source ~/.bash_profile_work
