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

if [[ -x "`which kubectl`" ]]; then
  echo "Loading kubectl completions ..."
  source <(kubectl completion zsh)
else
  notify-send "No kubectl detected ..." || :
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

if [ -x "`which npm`" ]; then
  echo "Loading npm completions ..."
  source <(npm completion)
else
  notify-send "No npm detected ..." || :
fi

if [ -x "`which doctl`" ]; then
  echo "Loading digitalocean completions ..."
  source <(doctl completion zsh)
else
  notify-send "No doctl detected ..." || :
fi

if [ -d $STATION_SDK/google-cloud-sdk ]; then
  echo "Loading Google SDK ..."
  source $STATION_SDK/google-cloud-sdk/path.zsh.inc
  source $STATION_SDK/google-cloud-sdk/completion.zsh.inc
else
  notify-send "No google sdk detected ..." || :
fi

if [ -d $FLUTTER_BIN ]; then
  echo "Loading flutter completions ..."
  source <(flutter zsh-completion)
else
  notify-send "No flutter sdk detected ..." || :
fi

if [ -x "`which zoxide`"]; then
  echo "Loading zoxide completions ..."
  eval "$(zoxide init zsh)"
else
  notify-send "No zoxide detected ..." || :
fi
