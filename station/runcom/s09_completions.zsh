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

echo "Loading kubectl completions ..."
source <(kubectl completion zsh)

echo "Loading cloud completions ..."
source <(doctl completion zsh)

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

echo "Loading npm completions ..."
source <(npm completion)

echo "Loading Google SDK ..."
if [ -d $STATION_SDK/google-cloud-sdk ]; then
  source $STATION_SDK/google-cloud-sdk/path.zsh.inc
  source $STATION_SDK/google-cloud-sdk/completion.zsh.inc
fi

echo "Loading flutter completions ..."
source <(flutter zsh-completion)
