#!/bin/sh
set -eu
[ "$(sh greet.sh)" = "Hello, world" ]
[ "$(sh greet.sh Ada)" = "Hello, Ada" ]
[ "$(sh greet.sh --shout)" = "HELLO, WORLD" ]
[ "$(sh greet.sh --shout Ada)" = "HELLO, ADA" ]
echo "tests passed"
