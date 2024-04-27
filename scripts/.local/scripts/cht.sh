#!/usr/bin/env bash

languages=$(echo "golang c cpp typescript rust python java javascript lua nodejs" | tr " " "\n")
core_utils=$(echo "find xargs sed awk mv ls cat less" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "query: " query

if echo "$languages" | grep -qs $selected; then
  tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
  tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
