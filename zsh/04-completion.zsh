autoload -Uz compinit
compinit
source <(kubectl completion zsh)

source ~/code/strata/strata-labs/env.sh
. <(helm completion zsh)

source "$HOME/google-cloud-sdk/path.zsh.inc" # updates PATH for the Google Cloud SDK.
source "$HOME/google-cloud-sdk/completion.zsh.inc" # enables shell command completion for gcloud.
