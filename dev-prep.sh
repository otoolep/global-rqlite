#!/bin/bash

apt-get update
apt-get -y install gcc bison git make curl
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source $HOME/.gvm/scripts/gvm
gvm install go1.5 --binary
gvm use go1.5 --default
