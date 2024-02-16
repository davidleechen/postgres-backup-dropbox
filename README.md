# Postgres Backup to Dropbox
This repository houses the image definition for a Kubernetes CronJob
that regularly backs up Postgres and uploads in to a Dropbox folder.

Building:
docker build . -t davidchenware/postgres-backup-dropbox:0.2

Pushing:
docker push davidchenware/postgres-backup-dropbox:0.2

In the CronJob spec, use the ENVs to override and set values, mount a custom
script in the /backup.sh location to run all the `psql` and `pg_dump` commands.

`jq` is used to parse responses for getting a Dropbox OAuth 2.0 refresh token
that is then used to upload the contents of a tar'd database dump to storage.