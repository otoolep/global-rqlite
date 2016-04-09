#!/bin/bash

apt-get update
apt-get -y install gcc curl make git bison
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /root/.gvm/scripts/gvm
gvm install go1.5 --binary
gvm use go1.5

mkdir rqlite
cd rqlite/
export GOPATH=$PWD
go get -t github.com/otoolep/rqlite/...
