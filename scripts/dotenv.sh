#!/bin/sh

### Outputs to stdout the value of a variable from env file
### Usage:
# ./dotenv.sh <env-file> <env-var-name>
#
# Example: ./dotenv.sh .env APP_PORT
# Output: 3000 (considering env file has APP_PORT=3000 line)
#
# Outputs empty result if variable was not found

if [ -f "$1" ]; then
  # shellcheck disable=SC2046
  vars=$(grep -vE "^(#.*|\s*)$" "$1")
  # shellcheck disable=SC2163
  export "$vars"
  eval "var=\$$2"
  # shellcheck disable=SC2154
  echo "${var}"
fi
