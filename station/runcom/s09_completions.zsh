##############################################################################
#
#    dppereyra's personal zsh config
#
#    application completions
#
##############################################################################

echo "Loading completions ..."

echo "Loading asdf completions ..."
source $ASDF_DIR/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

echo "Loading pipx completions ..."
eval "$(register-python-argcomplete pipx)"

echo "Checking for kubectl ..."
if [[ -x "`which kubectl`" ]]; then
  echo "Loading kubectl completions ..."
  source <(kubectl completion zsh)
fi

echo "Loading pyenv ..."
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

echo "Loading goenv ..."
eval "$(goenv init -)"

echo "Loading nodenv ..."
eval "$(nodenv init -)"

echo "Loading rbenv ..."
eval "$(rbenv init -)"

echo "Checking for npm ..."
if [[ -x "`which npm`" ]]; then
  echo "Loading npm completions ..."
  source <(npm completion)
fi

echo "Checking for digitalocean cli tool ..."
if [[ -x "`which doctl`" ]]; then
  echo "Loading digitalocean completions ..."
  source <(doctl completion zsh)
fi

echo "Checking for google sdk ..."
if [[ -d $STATION_SDK/google-cloud-sdk ]]; then
  echo "Loading Google SDK ..."
  source $STATION_SDK/google-cloud-sdk/path.zsh.inc
  source $STATION_SDK/google-cloud-sdk/completion.zsh.inc
fi

echo "Checking for flutter ..."
if [[ -d $FLUTTER_BIN ]]; then
  echo "Loading flutter completions ..."
  source <(flutter zsh-completion)
fi

echo "Checking for zoxide ..."
if [[ -x $(which zoxide) ]]; then
  echo "Loading zoxide completions ..."
  source <(zoxide init zsh)
fi
