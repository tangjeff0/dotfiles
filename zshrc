export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias vi='vim'
alias cdpwd='open -a Terminal `pwd`'
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'
alias gitAm="git add -A && git commit -m"
alias pg='/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -p5432 -d postgres'

# https://github.com/olivierverdier/zsh-git-prompt
source ~/.zsh-git-prompt/zshrc.sh
PROMPT='%d $(git_super_status) %% %F{green}'

RPROMPT='%F{magenta}%*%f'
