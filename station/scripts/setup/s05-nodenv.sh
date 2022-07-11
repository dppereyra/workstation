#!/bin/env bash

set -e

STATION_HOME=~/station
ENVS_PATH=$STATION_HOME/envs
ENV_ROOT=$ENVS_PATH/nodenv

echo "Install nodenv ..."
git clone https://github.com/nodenv/nodenv.git                 "${ENV_ROOT}"
git clone https://github.com/nodenv/node-build.git             "${ENV_ROOT}/plugins/node-build"
git clone https://github.com/nodenv/nodenv-package-rehash.git  "${ENV_ROOT}/plugins/nodenv-package-rehash"
git clone https://github.com/nodenv/nodenv-update.git          "${ENV_ROOT}/plugins/nodenv-update"
git clone https://github.com/nodenv/node-build-update-defs.git "${ENV_ROOT}/plugins/node-build-update-defs"
