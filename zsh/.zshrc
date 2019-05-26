# NOTE
# TODO
  # how to make separate Mac and Linux configs?
  # vim ex mode show prev command, default Evil?
# Prompt
  autoload -U colors && colors
  autoload -Uz vcs_info
  precmd_vcs_info() { vcs_info }
  precmd_functions+=( precmd_vcs_info )
  PROMPT="%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %% %{$reset_color%}% "
  setopt prompt_subst
  RPROMPT="%{$fg[magenta]%}% \$vcs_info_msg_0_ %{$reset_color%}%"
  zstyle ':vcs_info:git:*' formats '%b'
# Export
  export LSCOLORS='gxfxcxdxbxegedabagacad' # mac https://geoff.greer.fm/lscolors/
  export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'  # linux
  export EDITOR='vim'
  export DOCKER_ID_USER='tangsauce'
  export TERM=xterm-256color
  export PY=/usr/local/lib/python2.7/site-packages
  export GOPATH=/Users/jefftang/code/go
  export GOROOT=/usr/local/opt/go/libexec
  export ZDOTDIR=$HOME/.zsh
  export LESSHISTFILE=/dev/null
  export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g "" --ignore-dir .git --ignore-dir bundle --ignore-dir undo'
  export NVM_DIR="$HOME/.nvm"
# PATH
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:$GOROOT/bin
  export PATH=$PATH:$JAVA_HOME
# History
  HISTFILE=~/.zsh/zhistory
  HISTSIZE=1200
  SAVEHIST=1000
  setopt HIST_EXPIRE_DUPS_FIRST
  setopt EXTENDED_HISTORY
  setopt APPEND_HISTORY
  setopt HIST_IGNORE_DUPS #save only one command if 2 common are same and consistent
  setopt HIST_IGNORE_SPACE # http://leahneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
  unsetopt SHARE_HISTORY
# Alias
  alias ap='apropos'
  alias h='history'
  alias v='vim'
  alias f='vifm'
  alias ec='emacsclient -n'
  alias g='git'
  alias t='terraform'
  alias d='docker'
  alias py='python3'
  alias soz="source $ZDOTDIR/.zshrc"
  alias l='ls --color=always -l -a' # color
  alias ebook='ebook-viewer --continue &'
  alias c='circleci'
  alias gc='gcloud'
  alias gcl='gcloud config configurations list'
  # tmux
    alias ta='tmux attach -t'
    alias tad='tmux attach -d -t'
    alias ts='tmux new-session -s'
    alias tl='tmux list-sessions'
    alias tksv='tmux kill-server'
    alias tkss='tmux kill-session -t'
  # kubectl
    alias k='kubectl'
    alias ka='kubectl apply -Rf'
    alias kd='kubectl describe'
    alias ke='kubectl exec -ti'
    alias kg='kubectl get'
    alias kl='kubectl logs'
    alias kc='kubectl config current-context'
    alias ku='kubectl config use-context'
    alias kpf='kubectl port-forward'
# source
  autoload -Uz compinit && compinit
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  # source <(kubectl completion zsh)
  # source <(helm completion zsh)
  # source "$HOME/google-cloud-sdk/path.zsh.inc"
  # source "$HOME/google-cloud-sdk/completion.zsh.inc"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
