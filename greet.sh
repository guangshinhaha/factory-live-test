#!/bin/sh
# greet.sh [--shout] [name]: print a greeting.
greet() { printf 'Hello, %s\n' "${1:-world}"; }
if [ "${1-}" = "--shout" ]; then
  shift
  greet "$@" | tr '[:lower:]' '[:upper:]'
else
  greet "$@"
fi
