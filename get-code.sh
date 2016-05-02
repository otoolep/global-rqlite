#!/bin/bash
source $HOME/.gvm/scripts/gvm
gvm use go1.5 --default
cd $HOME
mkdir rqlite
cd rqlite/
export GOPATH=$PWD
go get -t github.com/rqlite/rqlite/...
