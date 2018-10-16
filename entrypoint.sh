#!/bin/ash

tar -czf /$FILE_NAME -C $PATH_TO_BACKUP .
azcopy --quiet --source /$FILE_NAME --destination "$BLOB_URL"
