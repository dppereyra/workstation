#!/bin/env bash

set -e

STATION_HOME=~/station
ENVS_PATH=$STATION_HOME/envs
ENV_ROOT=$ENVS_PATH/pyenv

echo "Install pyenv ..."
git clone https://github.com/pyenv/pyenv.git                      "${ENV_ROOT}"
git clone https://github.com/pyenv/pyenv-virtualenv.git           "${ENV_ROOT}/plugins/pyenv-virtualenv"
git clone https://github.com/pyenv/pyenv-which-ext.git            "${ENV_ROOT}/plugins/pyenv-which-ext"
git clone https://github.com/pyenv/pyenv-update.git               "${ENV_ROOT}/plugins/pyenv-update"
# git clone https://github.com/jawshooah/pyenv-default-packages.git "${ENV_ROOT}/plugins/pyenv-default-packages"
# git clone https://github.com/yyuu/pyenv-ccache.git                "${ENV_ROOT}/plugins/pyenv-ccache"

# cp ./default-python-packages "${ENV_ROOT}/default-packages"
