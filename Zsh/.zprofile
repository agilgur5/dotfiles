setopt INTERACTIVE_COMMENTS # allow comments in interactive shell

autoload -Uz compinit && compinit # load completions
setopt complete_aliases # use completions for aliases too

# Add VSCode to $PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Set VSCode to default $EDITOR
export EDITOR="code --wait"


# add fancy Zsh prompt with starship.rs
# does git, k8s, AWS, Gcloud, Terraform, etc, etc out-of-the-box
eval "$(starship init zsh)"


# JS/Node configuration
export NVM_DIR="$HOME/.nvm"
# load nvm
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  . "/usr/local/opt/nvm/nvm.sh"
fi

# Python configuration
# load pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
