#! /bin/sh

# exit if a command fails
set -e

apk update

apk add curl

apk add jq

# cleanup
rm -rf /var/cache/apk/*