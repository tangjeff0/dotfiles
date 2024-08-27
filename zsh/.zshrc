# Aliases
alias soz="source ~/.zshrc"
alias sob="source ~/.bashrc"
alias sop="source ~/.profile"
alias l='ls --color=always -l -a'
alias g="git"
alias v='vim'
alias pip="pip3"
alias py="python3"


# zshrc packages and config
export ZDOTDIR=$HOME/.zsh
source $ZDOTDIR/antigen.zsh
antigen use oh-my-zsh
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
THEME=denysdovhan/spaceship-prompt
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi
antigen apply



# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
. "$HOME/.cargo/env"
