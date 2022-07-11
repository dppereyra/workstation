#!/bin/env bash

set -e

STATION_HOME=~/station
ENVS_PATH=$STATION_HOME/envs
ENV_ROOT=$ENVS_PATH/rbenv

echo "Install rbenv ..."
git clone https://github.com/rbenv/rbenv.git "${ENV_ROOT}"
cd "${ENV_ROOT}" && src/configure && make -C src
git clone https://github.com/rbenv/ruby-build.git "${ENV_ROOT}/plugins/ruby-build"
git clone https://github.com/rkh/rbenv-update.git "${ENV_ROOT}/plugins/rbenv-update"
