# aliases
alias v='vim'
alias f='vifm'
alias ec='emacsclient -n'
alias g='git'
alias h='history'
alias t='terraform'
alias d='docker'
alias py='python3'
alias soz="source $ZDOTDIR/.zshrc"
alias soe='source .env && echo "sourced .env"; source env.sh && echo sourced env.sh'
alias ra='ranger'

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
alias kpf='kubectl port-forward'
# kubectl switch context
ks() {
  if [[ $(kx) == "prod" ]] ; then
    ku $(kc | cut -d "_" -f 1-3)_staging
  else
    ku $(kc | cut -d "_" -f 1-3)_prod
  fi
}


# google cloud
alias gc='gcloud'
alias gcl='gcloud config configurations list'

alias ebook='ebook-viewer --continue &'
