#!/bin/sh
# greet.sh [name]: print a greeting.
printf 'Hello, %s\n' "${1:-world}"
