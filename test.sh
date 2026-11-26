#!/bin/sh
set -eu
[ "$(sh greet.sh)" = "Hello, world" ]
[ "$(sh greet.sh Ada)" = "Hello, Ada" ]
echo "tests passed"
