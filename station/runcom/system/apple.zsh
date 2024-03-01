echo "Loading apple specific configs"

export HOMEBREW_PATH=/opt/homebrew/bin
export RANCHER_BIN=$HOME/.rd/bin

export PATH=$HOMEBREW_PATH:$RANCHER_BIN:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias recruitics-aws-login="aws sso login --sso-session main"
