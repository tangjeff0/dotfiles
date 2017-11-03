export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias vi='vim'
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'
alias cdpwd='open -a Terminal `pwd`'
alias gitAm="git add -A && git commit -m"
# alias gitb="git branch"
# alias gitco="git checkout"
# alias gitp="git push"

# https://github.com/olivierverdier/zsh-git-prompt
source ~/.zsh-git-prompt/zshrc.sh
PROMPT='%d $(git_super_status) %% %F{green}'

RPROMPT='%F{magenta}%*%f'
