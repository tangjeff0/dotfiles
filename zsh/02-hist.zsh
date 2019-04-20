HISTFILE=~/.zsh/zhistory
HISTSIZE=1200
SAVEHIST=1000
# setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS #save only one command if 2 common are same and consistent
setopt HIST_IGNORE_SPACE # http://leahneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
