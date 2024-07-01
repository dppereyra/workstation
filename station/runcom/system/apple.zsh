echo "Loading apple specific configs"

export HOMEBREW_PATH=/opt/homebrew/bin
export OPENJDK_BIN=/opt/homebrew/opt/openjdk@17/bin
export RANCHER_BIN=$HOME/.rd/bin

export PATH=$PATH:$HOMEBREW_PATH:$RANCHER_BIN:$OPENJDK_BIN

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

update-system() {
  brew update
  brew upgrade
  brew cleanup
}

alias recruitics-aws-login="aws sso login --sso-session main"

update-all() {
  update-system
  update-envs
}
