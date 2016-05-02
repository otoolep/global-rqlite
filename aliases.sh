#!/bin/bash

PUBLIC_IP=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
LOCAL_IP=`curl http://169.254.169.254/latest/meta-data/local-ipv4`

function start_follower {
    if [ -z "$1" ]; then
        echo "no leader hostname provided"
        return 1
    fi
    $HOME/rqlited -http $LOCAL_IP:4001 -httpadv $PUBLIC_IP:4001 -raft $LOCAL_IP:4002 -raftadv $PUBLIC_IP:4002 -join http://$1:4001 $HOME/node
}

alias start_leader="$HOME/rqlited -http $LOCAL_IP:4001 -httpadv $PUBLIC_IP:4001 -raft $LOCAL_IP:4002 -raftadv $PUBLIC_IP:4002 $HOME/node"
