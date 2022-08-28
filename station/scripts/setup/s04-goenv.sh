#!/bin/env bash

set -e

ASDF_VERSION=v0.9.0

STATION_HOME=~/station
ENVS_PATH=$STATION_HOME/envs
ENV_ROOT=$ENVS_PATH/goenv

echo "Install goenv ..."
git clone https://github.com/syndbg/goenv.git "${ENV_ROOT}"
