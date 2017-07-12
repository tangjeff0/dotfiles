# not sure what these paths are exporting for
  # actually, not sure what export does anyways
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

RPROMPT='%F{magenta}%*%f'
source ~/.zsh-git-prompt/zshrc.sh
PROMPT='%d $(git_super_status) %% '
