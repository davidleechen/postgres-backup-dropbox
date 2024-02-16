#! /bin/sh

# exit if a command fails
set -e

apk update

# install pg_dump
apk add postgresql

apk add curl

apk add jq

# cleanup
rm -rf /var/cache/apk/*