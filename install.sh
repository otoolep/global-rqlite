#!/bin/bash

VERSION=v3.1.0
curl -L -s https://github.com/otoolep/rqlite/releases/download/$VERSION/rqlited-$VERSION-linux-amd64.tar.gz -o rqlited-$VERSION-linux-amd64.tar.gz
tar xvfz rqlited-$VERSION-linux-amd64.tar.gz
ln -s rqlited-$VERSION-linux-amd64/rqlited $HOME/rqlited
ln -s rqlited-$VERSION-linux-amd64/rqlite $HOME/rqlite
