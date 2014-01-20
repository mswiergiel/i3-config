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

    *)
    echo    "Usage: $0 {lock|logout|reboot|shutdown}"
    exit 2

esac

exit 0 
