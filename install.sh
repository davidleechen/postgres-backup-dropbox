#! /bin/sh

# exit if a command fails
set -e

apk update

# install mysqldump
apk add postgresql

apk add jq

# cleanup
rm -rf /var/cache/apk/*