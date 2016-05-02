#!/bin/bash

VERSION=v3.0.1
curl -L  https://github.com/otoolep/rqlite/releases/download/$VERSION/rqlited-$VERSION-linux-amd64.tar.gz -o rqlited-$VERSION-linux-amd64.tar.gz
tar xvfz rqlited-$VERSION-linux-amd64.tar.gz
ln -s rqlited-$VERSION-linux-amd64/rqlited $HOME/rqlited
