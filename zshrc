export EDITOR='vim'
export DOCKER_ID_USER='tangsauce'
export TERM=xterm-256color
export PY=/usr/local/lib/python2.7/site-packages

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin
export PATH=$PATH:/Applications/Dev
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.yarn/bin
# export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
# export PATH=$PATH:/usr/java/jre1.8.0_171/bin
# export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"


alias v='vim'
alias ec='emacsclient'
alias o='xdg-open'
alias g='git'
alias h='heroku'
alias py='python3'
alias py3='python3'
alias dc='~/Desktop/code'
alias soz='source ~/.zshrc'
alias soe='source .env && echo "sourced .env"; source env.sh && echo sourced env.sh'
alias gAm="git add -A && git commit -m"
alias jcj='f() { javac $1 && java ${1%.*} }; f'
# alias pbcopy='xclip -selection clipboard'
alias matlab='~/MATLAB/bin/matlab -nosplash'

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
alias kd='kubectl delete'
alias ke='kubectl exec -ti'
alias kg='kubectl get'
alias kl='kubectl logs'
alias kc='kubectl config current-context'
alias kx='kc | cut -d "_" -f 4'
alias ku='kubectl config use-context'

export PROJECT_ID='solid-setup-217619'
export ZONE='us-central1-a'

# test credentials
export XRP_PRIVATE="sniJNebJrWA3rSkxwdejFBG75YyW7"
export XRP_PUBILC="rEqgt54AqWG6RVFCkSY68e46qmrmtiFCfr"
export XRP_NET="wss://s.altnet.rippletest.net:51233"

export GOPATH=$HOME/code/go


# kubectl switch context
ks() {
  if [[ $(kx) == "prod" ]] ; then
    ku $(kc | cut -d "_" -f 1-3)_staging
  else
    ku $(kc | cut -d "_" -f 1-3)_prod
  fi
}

setopt AUTO_CD
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g "" --ignore-dir .git'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jefftang/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jefftang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jefftang/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jefftang/google-cloud-sdk/completion.zsh.inc'; fi

source ~/code/strata/env.sh
