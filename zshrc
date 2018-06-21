export EDITOR='vim'
export DOCKER_ID_USER='tangsauce'
export TERM=xterm-256color
export PY=/usr/local/lib/python2.7/site-packages
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin
export PATH=$PATH:/Applications/Dev
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

alias g='git'
alias py='python2'
alias py3='python3'
alias dc='~/Desktop/code'
alias soz='source ~/.zshrc'
alias soe='source .env'
alias soe='source .env'
alias v='vim'
alias gitAm="git add -A && git commit -m"
alias jcj='f() { javac $1 && java ${1%.*} }; f'

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

setopt AUTO_CD

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

eval $(thefuck --alias)
