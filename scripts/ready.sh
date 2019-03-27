#!/bin/bash

if [ "$(curl -sS http://localhost:8181/ready | grep OK)" == "OK" ]; then
  if [ -f /tmp/notready ]; then
    echo "CoreDNS Not Ready!"
    exit 1
  else
    echo "CoreDNS Ready!"
    exit 0
  fi
else
  exit 1
fi
