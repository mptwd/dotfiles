#!/usr/bin/env bash

languages=$(cat "$HOME/.config/tmux/tmux-cht-languages")
core_utils=$(cat "$HOME/.config/tmux/tmux-cht-command")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "query: " query

if echo "$languages" | grep -qs $selected; then
  tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
  tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
