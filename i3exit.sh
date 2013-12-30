#!/bin/bash
lock() {
    i3lock
}
case $1 in
    lock)
       lock
       ;;
    logout)
        i3-msg exit
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
esac
