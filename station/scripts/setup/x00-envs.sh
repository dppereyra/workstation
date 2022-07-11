#!/bin/env bash

set -e

ASDF_VERSION=v0.10.0

STATION_HOME=~/station
ENVS_PATH=$STATION_HOME/envs

PYENV_ROOT=$ENVS_PATH/pyenv
GOENV_ROOT=$ENVS_PATH/goenv
RBENV_ROOT=$ENVS_PATH/rbenv
NODENV_ROOT=$ENVS_PATH/nodenv

mkdir -p $ENVS_PATH

echo "Install asdf ..."
git clone https://github.com/asdf-vm/asdf.git $ENVS_PATH/asdf --branch $ASDF_VERSION

echo "Install pyenv ..."
git clone https://github.com/pyenv/pyenv.git                      "${PYENV_ROOT}"
git clone https://github.com/pyenv/pyenv-virtualenv.git           "${PYENV_ROOT}/plugins/pyenv-virtualenv"
git clone https://github.com/pyenv/pyenv-which-ext.git            "${PYENV_ROOT}/plugins/pyenv-which-ext"
git clone https://github.com/pyenv/pyenv-update.git               "${PYENV_ROOT}/plugins/pyenv-update"
git clone https://github.com/jawshooah/pyenv-default-packages.git "${PYENV_ROOT}/plugins/pyenv-default-packages"
git clone https://github.com/yyuu/pyenv-ccache.git                "${PYENV_ROOT}/plugins/pyenv-ccache"
# cp ./default-python-packages "${PYENV_ROOT}/default-packages"

echo "Install goenv ..."
git clone https://github.com/syndbg/goenv.git "${GOENV_ROOT}"


echo "Install rbenv ..."
git clone https://github.com/rbenv/rbenv.git "${RBENV_ROOT}"
cd "${RBENV_ROOT}" && src/configure && make -C src
cd ${HOME}
git clone https://github.com/rbenv/ruby-build.git "${RBENV_ROOT}/plugins/ruby-build"
git clone https://github.com/rkh/rbenv-update.git "${RBENV_ROOT}/plugins/rbenv-update"

echo "Install nodenv ..."
git clone https://github.com/nodenv/nodenv.git                 "${NODENV_ROOT}"
git clone https://github.com/nodenv/node-build.git             "${NODENV_ROOT}/plugins/node-build"
git clone https://github.com/nodenv/nodenv-package-rehash.git  "${NODENV_ROOT}/plugins/nodenv-package-rehash"
git clone https://github.com/nodenv/nodenv-update.git          "${NODENV_ROOT}/plugins/nodenv-update"
git clone https://github.com/nodenv/node-build-update-defs.git "${NODENV_ROOT}/plugins/node-build-update-defs"
