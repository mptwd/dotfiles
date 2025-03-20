#!/bin/bash

# Power options
options="  Shutdown\n  Reboot\n  Lock\n󰤆  Logout"

# Show power options in rofi
chosen_option=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

case $chosen_option in
    "  Shutdown")
        systemctl poweroff
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "  Lock")
        i3lock  # or any lock screen you prefer
        ;;
    "󰤆  Logout")
        i3-msg exit
        ;;
esac

