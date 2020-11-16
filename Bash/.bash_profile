# default editor
export EDITOR="code --wait"

# Bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# add kube_ps1 function for a Bash prompt / PS1 for k8s
if [ -f "$(brew --prefix)/opt/kube-ps1/share/kube-ps1.sh" ]; then
  source "$(brew --prefix)/opt/kube-ps1/share/kube-ps1.sh"
fi

# customize Git prompt below with kube_ps1
function prompt_callback() {
  echo -n " $(kube_ps1)"
}

# Bash prompt / PS1 for Git -- prompt is dynamic and uses prompt_callback above
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi


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
