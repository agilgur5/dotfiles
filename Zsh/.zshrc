
# shellcheck shell=bash  # actually zsh but shellcheck doesn't recognize it

setopt INTERACTIVE_COMMENTS # allow comments in interactive shell

# add brew completions: https://github.com/Homebrew/brew/blob/4.1.10/docs/Shell-Completion.md#configuring-completions-in-zsh
if type brew &>/dev/null ; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi
# load completions and use them for aliases too
autoload -Uz compinit && compinit
setopt complete_aliases

# Add VSCode to $PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Set VSCode to default $EDITOR
export EDITOR="code --wait"


# add fancy Zsh prompt with starship.rs (does git, k8s, AWS, Gcloud, Terraform, etc, etc out-of-the-box)
eval "$(starship init zsh)"

# load asdf / mise version manager (https://github.com/jdx/mise#quickstart)
eval "$(mise activate zsh)"

# load work-specific config on top
source ~/.zshrc_work
