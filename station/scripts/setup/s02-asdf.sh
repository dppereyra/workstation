#!/bin/env bash

set -e

ASDF_VERSION=v0.10.0

STATION_HOME=~/station

echo "Install asdf ..."
git clone https://github.com/asdf-vm/asdf.git $STATION_HOME/asdf --branch $ASDF_VERSION
