#!/bin/sh

case "$1" in
    start)
        nginx > /usr/local/logs/server.log 2>&1 &
        ;;
    stop)
        nginx -s stop
        ;;
    reload)
        nginx -s reload
        ;;
    *)
        echo "Usage: {start|stop|reload}"
        exit 2
        ;;
esac

exit 0