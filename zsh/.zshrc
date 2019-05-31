# tangsauce zshrc
# NOTE
# TODO
  # how to make separate Mac and Linux configs?
  # vim ex mode show prev command, default Evil?
# packages / source
  export ZDOTDIR=$HOME/.zsh
  export ADOTDIR=$ZDOTDIR/antigen
  if ! [ -f $ZDOTDIR/antigen.zsh ]; then
    curl -L git.io/antigen > $ZDOTDIR/antigen.zsh
  fi
  source $ZDOTDIR/antigen.zsh
  antigen bundle andrewferrier/fzf-z
  antigen bundle olivierverdier/zsh-git-prompt
  antigen bundle robbyrussell/oh-my-zsh lib/git.zsh
  antigen bundle robbyrussell/oh-my-zsh plugins/colored-man-pages
  antigen bundle robbyrussell/oh-my-zsh plugins/colorize
  antigen bundle robbyrussell/oh-my-zsh plugins/vi-mode
  antigen bundle rupa/z
  antigen bundle zsh-users/zsh-autosuggestions
  antigen bundle zsh-users/zsh-history-substring-search
  antigen bundle zsh-users/zsh-syntax-highlighting
  antigen apply
  autoload -Uz compinit && compinit
  # source <(kubectl completion zsh)
  # source <(helm completion zsh)
  # source "$HOME/google-cloud-sdk/path.zsh.inc"
  # source "$HOME/google-cloud-sdk/completion.zsh.inc"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# config
  # zsh-history-substring-search
    bindkey -M vicmd 'k' history-substring-search-up
    bindkey -M vicmd 'j' history-substring-search-down
  setopt AUTO_CD
# PROMPT
  autoload -U colors && colors
  GREEN="%{$fg_bold[green]%}"
  BLUE="%{$fg_bold[blue]%}"
  CYAN="%{$fg_bold[cyan]%}"
  RED="%{$fg_bold[red]%}"
  YELLOW="%{$fg_bold[yellow]%}"
  MAGENTA="%{$fg_bold[magenta]%}"
  WHITE="%{$fg[white]%}"
  RESET="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
  ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
  ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
  ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ "
  ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}§ "
  ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}◒ "
  ZSH_THEME_GIT_PROMPT_PREFIX="${CYAN}["
  ZSH_THEME_GIT_PROMPT_SUFFIX="${CYAN}]$RESET"
  ZSH_THEME_GIT_PROMPT_AHEAD="$YELLOW⇡ $RESET"
  ZSH_THEME_GIT_PROMPT_BEHIND="$CYAN⇣ "
  ZSH_THEME_GIT_PROMPT_CLEAN="$GREEN✓ $RESET"
  ZSH_THEME_GIT_PROMPT_DIRTY="💩"
  function zle-line-init zle-keymap-select {
    CWD="${CYAN}%(5~|%-1~/.../%3~|%4~)"
    PRIVILEGE=$YELLOW%#
    PROMPT="$CWD $PRIVILEGE $RESET"
    CODE="%(?.${GREEN}.${RED}[%?]$RESET)"
    CMD_NUM="${GREEN}[%h]$RESET"
    TIME="${WHITE}[$(date +%H:%M)]$RESET"
    VIM_MODE="${${KEYMAP/vicmd/🍑}/(main|viins)/🍆}"
    VCS_INFO="$(git_prompt_info)"
    if [[ $(git_prompt_status) = *[![:space:]]* ]] ; then
      VCS_INFO+="${RED}[$(git_prompt_status)${RED}]$RESET"
    fi
    RPROMPT=""
    RPROMPT+=$CODE
    RPROMPT+=$VCS_BRANCH
    RPROMPT+=$CMD_NUM
    RPROMPT+=$TIME
    RPROMPT+=$VCS_INFO
    RPROMPT+=$VIM_MODE
    RPROMPT+=$RESET
    zle reset-prompt
  }
  zle -N zle-line-init
  zle -N zle-keymap-select
# export
  export ANTIGEN_DEBUG_LOG=/dev/null
  export DOCKER_ID_USER='tangsauce'
  export EDITOR='vim'
  export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
    --color fg:242,bg:233,hl:65,fg+:15,bg+:234,hl+:108
    --color info:108,prompt:109,spinner:108,pointer:168,marker:168
    --preview "
      [[ $(file --mime {}) =~ binary ]] && echo {} is a binary file ||
      (bat --style=numbers --color=always {} ||
      cat {}) 2> /dev/null | head -100"
  '
  export FZF_ALT_C_OPTS='--preview "tree -aC {}"'
  export GOPATH=/Users/jefftang/code/go
  export GOROOT=/usr/local/opt/go/libexec
  export LESSHISTFILE=/dev/null
  export LSCOLORS='gxfxcxdxbxegedabagacad' # mac https://geoff.greer.fm/lscolors/
  export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43' # linux
  export NVM_DIR="$HOME/.nvm"
  export PY=/usr/local/lib/python2.7/site-packages
  export TERM=xterm-256color
  export _Z_DATA=$ZDOTDIR/z
# PATH
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:$GOROOT/bin
  export PATH=$PATH:$JAVA_HOME
# HIST
  HISTFILE=$ZDOTDIR/zhistory
  HISTSIZE=1000
  SAVEHIST=10000
  setopt APPEND_HISTORY
  setopt EXTENDED_HISTORY
  setopt HIST_EXPIRE_DUPS_FIRST
  setopt HIST_IGNORE_DUPS # save only one command if 2 common are same and consistent
  setopt HIST_IGNORE_SPACE # http://leahneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
  setopt HIST_SAVE_NO_DUPS
  unsetopt INC_APPEND_HISTORY_TIME
  unsetopt SHARE_HISTORY
# alias
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
  alias l='ls --color=always -l -a' # ubuntu
  alias l='ls -G -l -a' # mac
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
