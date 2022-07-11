#!/bin/env bash

set -e

STATION_HOME=~/station
ZINIT_HOME=$STATION_HOME/zinit

echo "Install zinit ..."
git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT_HOME}"
