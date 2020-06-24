#!/usr/bin/env bash

if id -u imio | grep -q '913' && date | grep -q 'CEST'; then
  echo "Tests passed!"
  exit 0
else
  echo "Tests failed!"
  exit 1
fi
