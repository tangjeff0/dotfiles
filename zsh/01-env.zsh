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
export ZDOTDIR=$HOME/.zsh

# PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$JAVA_HOME

export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g "" --ignore-dir .git --ignore-dir bundle --ignore-dir undo'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
