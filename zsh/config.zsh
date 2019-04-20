# prompt
autoload -U colors && colors
PROMPT="%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %% %{$reset_color%}% "

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT="%{$fg[magenta]%}% \$vcs_info_msg_0_ %{$reset_color%}%"
zstyle ':vcs_info:git:*' formats '%b'
