#!/bin/bash

PRIVATE_IP=`ifconfig`
PUBLIC_IP=`curl http://169.254.169.254/latest/meta-data/public-ipv4`

function start_follower {
    $HOME/rqlited -http -httpadv -raft -raftadv -join $1 $HOME/node
}

alias start_leader="$HOME/rqlited -http -httpadv -raft -raftadv  $HOME/node"
