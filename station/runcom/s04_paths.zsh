##############################################################################
#
#    dppereyra's personal zsh config
#
#    zsh paths
#
##############################################################################

echo "Setting up paths ..."


export PROJECT_HOME=~/projects

export STATION_BIN=$STATION_HOME/bin
export STATION_SCRIPTS=$STATION_HOME/scripts
export STATION_ENV=$STATION_HOME/envs
export STATION_SDK=$STATION_HOME/sdk

export NPM_BIN=$STATION_HOME/npm/bin

export ASDF_DIR=$STATION_HOME/asdf
export ASDF_BIN=~/.asdf/bin
export CARGO_BIN=~/.cargo/bin
export LOCAL_BIN=~/.local/bin

export GCLOUD_BIN=$STATION_SDK/google-cloud-sdk/bin
export FLUTTER_BIN=$STATION_SDK/flutter/bin

export ANDROID_HOME=$STATION_SDK/android
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools

export PYENV_ROOT=$STATION_ENV/pyenv
export PYENV_BIN=$PYENV_ROOT/bin

export GOENV_ROOT=$STATION_ENV/goenv
export GOENV_BIN=$GOENV_ROOT/bin

export RBENV_ROOT=$STATION_ENV/rbenv
export RBENV_BIN=$RBENV_ROOT/bin

export NODENV_ROOT=$STATION_ENV/nodenv
export NODENV_BIN=$NODENV_ROOT/bin

export GOPATH=$PROJECT_HOME/go
export GO_BIN=$GOPATH/bin

export ENV_PATHS=$ASDF_BIN:$PYENV_BIN:$GOENV_BIN:$NODENV_BIN:$RBENV_BIN
export APP_PATHS=$GO_BIN:$CARGO_BIN:$NPM_BIN:$FLUTTER_BIN:$CONDA_BIN:$GCLOUD_BIN
export PATH=$ENV_PATHS:$APP_PATHS:$STATION_SCRIPTS:$LOCAL_BIN:$PATH
