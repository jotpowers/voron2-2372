#!/bin/bash

# Check if the user provided an argument
if [ -z "$1" ]; then
  echo "Usage: $0 {start|stop}"
  exit 1
fi

# Handle start and stop arguments
case "$1" in
  start)
    echo "Starting Crowsnest service..."
    sudo systemctl start crowsnest
    ;;
  stop)
    echo "Stopping Crowsnest service..."
    sudo systemctl stop crowsnest
    ;;
  *)
    echo "Invalid argument: $1"
    echo "Usage: $0 {start|stop}"
    exit 1
    ;;
esac

exit 0
