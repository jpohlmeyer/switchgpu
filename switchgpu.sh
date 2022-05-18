#!/bin/bash

if [ "$(whoami)" != "root" ]
then
    echo "You need to run the script with root privileges"
    exit
fi

if [ "$1" = "egpu" ]; then
  echo "Switching to EGPU"
  prime-select nvidia
  egpu-switcher switch egpu
  sleep 1s
  read -p "Press any key to restart session... " -n1 -s
  systemctl restart display-manager.service
elif [ "$1" = "internal" ]; then
  echo "Switching to Internal GPU"
  prime-select intel
  egpu-switcher switch internal
  sleep 1s
  read -p "Press any key to restart session... " -n1 -s
  systemctl restart display-manager.service
else
  echo "Usage: switchgpu.sh egpu|internal"
fi
