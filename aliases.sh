#!/bin/bash

function start_follower {
    $HOME/rqlited -http -httpadv -raft -raftadv -join $1 $HOME/node
}

alias start_leader="$HOME/rqlited -http -httpadv -raft -raftadv  $HOME/node"
