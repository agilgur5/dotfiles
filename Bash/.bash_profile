# Bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Bash Prompt / PS1
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi


# JS/Node configuration
export NVM_DIR="$HOME/.nvm"
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  . "/usr/local/opt/nvm/nvm.sh"
fi
if [ -s "/usr/local/opt/nvm/etc/bash_completion" ]; then
  . "/usr/local/opt/nvm/etc/bash_completion"
fi


# Python configuration
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
