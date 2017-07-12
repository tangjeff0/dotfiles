# not sure what these paths are exporting for
  # actually, not sure what export does anyways
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

# add git branch to prompt. see https://stackoverflow.com/questions/1128496/to-get-a-prompt-which-indicates-git-branch-in-zsh
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
        '%F{yellow}(%r/%b%u)%F{5}%f'
zstyle ':vcs_info:*' formats       \
        '%F{blue}(%r/%b%u)%F{5}%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn
# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}

RPROMPT=$'$(vcs_info_wrapper)  %F{magenta}%*%f'
export PS1="%F{gray}%d %% %f"
