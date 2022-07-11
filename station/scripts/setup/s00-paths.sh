#!/bin/env bash

set -e

STATION_HOME=~/station
ENVS_PATH=$STATION_HOME/envs

mkdir -p $ENVS_PATH
mkdir -p $STATION_HOME/ansible/roles
mkdir -p $STATION_HOME/appimages
mkdir -p $STATION_HOME/bin
mkdir -p $STATION_HOME/npm
mkdir -p $STATION_HOME/sdk
mkdir -p $STATION_HOME/zinit
