
# shellcheck shell=bash  # actually zsh but shellcheck doesn't recognize it

setopt INTERACTIVE_COMMENTS # allow comments in interactive shell

# configure completions
# add brew completions (https://github.com/Homebrew/brew/blob/4.1.10/docs/Shell-Completion.md#configuring-completions-in-zsh)
if type brew &>/dev/null ; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi
autoload -Uz compinit && compinit # load completions
setopt complete_aliases # use completions for aliases too

# Add VSCode to $PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Set VSCode to default $EDITOR
export EDITOR="code --wait"

# add fancy Zsh prompt with starship.rs (does git, k8s, AWS, Gcloud, Terraform, etc, etc out-of-the-box)
eval "$(starship init zsh)"

# Python configuration
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# load asdf version manager (https://asdf-vm.com/guide/getting-started.html#_3-install-asdf)
if [ -f $(brew --prefix asdf)/libexec/asdf.sh ]; then
  . $(brew --prefix asdf)/libexec/asdf.sh
fi

# Go configuration
if [ -f ~/.asdf/plugins/golang/set-env.zsh ]; then
  . ~/.asdf/plugins/golang/set-env.zsh
fi

# load work-specific config on top
source ~/.zshrc_work
