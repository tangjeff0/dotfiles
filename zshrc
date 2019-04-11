# prompt
autoload -U colors && colors
PROMPT="%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %% %{$reset_color%}% "

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT="%{$fg[magenta]%}% \$vcs_info_msg_0_ %{$reset_color%}%"
zstyle ':vcs_info:git:*' formats '%b'

# colors
# only difference from default is use cyan, not blue, for dir
# useful: https://geoff.greer.fm/lscolors/
export LSCOLORS='gxfxcxdxbxegedabagacad'

# variables
export EDITOR='vim'
export DOCKER_ID_USER='tangsauce'
export TERM=xterm-256color
export PY=/usr/local/lib/python2.7/site-packages
export GOPATH=/Users/jefftang/code/go
export GOROOT=/usr/local/opt/go/libexec

# PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$JAVA_HOME

# history
export HISTFILE="$HOME/.zhistory"
export HISTSIZE=1000
export SAVEHIST=1000
# setopt INC_APPEND_HISTORY # append into history file
setopt HIST_IGNORE_DUPS #save only one command if 2 common are same and consistent
setopt EXTENDED_HISTORY #add timestamp for each entry


# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home

# aliases
alias v='vim'
alias ec='emacsclient -n'
alias g='git'
alias h='history'
# alias h='helm'
alias t='terraform'
alias d='docker'
alias py='python3'
alias soz='source ~/.zshrc'
alias soe='source .env && echo "sourced .env"; source env.sh && echo sourced env.sh'

setopt HIST_IGNORE_SPACE # http://leahneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
alias cd=' cd'
alias ls=' ls'
alias l='ls -G -l -a' # color
alias ap='apropos'
alias c='circleci'

# tmux
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# kubernetes
alias k='kubectl'
alias ka='kubectl apply -Rf'
alias kd='kubectl describe'
alias ke='kubectl exec -ti'
alias kg='kubectl get'
alias kl='kubectl logs'
alias kc='kubectl config current-context'
alias kx='kc | cut -d "_" -f 4'
alias ku='kubectl config use-context'
# kubectl switch context
ks() {
  if [[ $(kx) == "prod" ]] ; then
    ku $(kc | cut -d "_" -f 1-3)_staging
  else
    ku $(kc | cut -d "_" -f 1-3)_prod
  fi
}

autoload -Uz compinit
compinit
source <(kubectl completion zsh)

# google cloud
alias gc='gcloud'
alias gcl='gcloud config configurations list'

alias ebook='ebook-viewer --continue &'

export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g "" --ignore-dir .git'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

files=(
'/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
"$HOME/.zsh/zsh-history-substring-search.zsh"
"$HOME/.zsh/vi-mode.plugin.zsh"
"$HOME/.fzf.zsh"
"$HOME/.zsh.env"
"$HOME/google-cloud-sdk/path.zsh.inc" # updates PATH for the Google Cloud SDK.
"$HOME/google-cloud-sdk/completion.zsh.inc" # enables shell command completion for gcloud.
)

green=`tput setaf 2`
reset=`tput sgr0`

for file in $files; do
  if [ -f $file ]
  then
    . $file
  fi
done

findpgm() {
  grep "$1" $HOME/code/bash_to_zsh/progfile | column
}

source ~/code/strata/env.sh
. <(helm completion zsh)
