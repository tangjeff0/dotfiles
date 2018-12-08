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
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export STK_INSTALL_DIR=~/Desktop/code/STK/stk11.4.0
export STK_CONFIG_DIR=$STK_INSTALL_DIR/conf
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export PATH=$PATH:/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin


alias v='vim'
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
alias pbcopy='xclip -selection clipboard'
alias matlab='~/MATLAB/bin/matlab -nosplash'

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

setopt AUTO_CD
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# unalias cp

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'
