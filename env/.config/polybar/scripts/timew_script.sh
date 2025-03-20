#!/usr/bin/bash

STATE_FILE="$HOME/.config/polybar/scripts/state.txt"
DEFAULT_TEXT="Not tracking"
PROJECTS_OPTION=$($HOME/.config/polybar/scripts/get_taskwarrior_projects.sh)

show_rofi() {
  CHOICE=$(printf "%s\n" "${PROJECTS_OPTION[@]}" | rofi -dmenu -p "Choose a project")
  if [[ -n $CHOICE ]]; then
    echo "$CHOICE" > "$STATE_FILE"
    polybar-msg hook timew 1
  fi
}

case $1 in
  click)
    if [[ -f "$STATE_FILE" && $(cat "$STATE_FILE") != "$DEFAULT_TEXT" ]]; then
      timew stop
      echo "$DEFAULT_TEXT" > "$STATE_FILE"
    else
      show_rofi
      timew start "$(cat "$STATE_FILE")"
    fi
    polybar-msg hook timew 1
    ;;
  default)
    if [[ -f "$STATE_FILE" ]]; then
      cat "$STATE_FILE"
    else
      echo "$DEFAULT_TEXT"
    fi
    ;;
esac
    
