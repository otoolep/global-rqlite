#!/bin/bash


curl -L  https://github.com/otoolep/rqlite/releases/download/v2.1/rqlited-v2.1-linux-amd64.tar.gz -o rqlited-v2.1-linux-amd64.tar.gz
tar xvfz rqlited-v2.1-linux-amd64.tar.gz
cd rqlited-v2.1-linux-amd64
./rqlited ~/node.1

