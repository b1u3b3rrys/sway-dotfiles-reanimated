#!/usr/bin/env bash

# -------- Configuration --------
LOGOUT_CMD="loginctl terminate-user $USER"
SUSPEND_CMD="systemctl suspend"
REBOOT_CMD="systemctl reboot"
SHUTDOWN_CMD="systemctl poweroff"

WOFI_CMD="wofi --dmenu --prompt Power --width 250"

# -------- Menu Options --------
OPTIONS=" Suspend
󰍃 Logout
 Reboot
 Shutdown"

CHOICE=$(echo -e "$OPTIONS" | $WOFI_CMD)

# -------- Actions --------
case "$CHOICE" in
    *Suspend*)
        $SUSPEND_CMD
        ;;
    *Logout*)
        $LOGOUT_CMD
        ;;
    *Reboot*)
        $REBOOT_CMD
        ;;
    *Shutdown*)
        $SHUTDOWN_CMD
        ;;
    *)
        exit 0
        ;;
esac
