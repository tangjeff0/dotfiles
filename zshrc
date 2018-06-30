export EDITOR='vim'
export DOCKER_ID_USER='tangsauce'
export TERM=xterm-256color
export PY=/usr/local/lib/python2.7/site-packages
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin
export PATH=$PATH:/Applications/Dev
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:/usr/java/jre1.8.0_171/bin

alias v='vim'
alias o='xdg-open'
alias g='git'
alias h='heroku'
alias py='python2'
alias py3='python3'
alias dc='~/Desktop/code'
alias soz='source ~/.zshrc'
alias soe='source .env && echo "sourced .env"; source env.sh && echo sourced env.sh'
alias gitAm="git add -A && git commit -m"
alias jcj='f() { javac $1 && java ${1%.*} }; f'
alias pbcopy='xclip -selection clipboard'

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

setopt AUTO_CD
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
unalias cp

eval $(thefuck --alias)
