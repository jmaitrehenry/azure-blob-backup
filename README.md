# Azure Blob Backup
Simple Docker image for taking backup and uploads them in an Azure blob storage

### Example:
```yaml
version: '3.4'
services:
  backup_couchdb:
    image: kumojin/azure-blob-backup
    volumes:
      - couchdb:/couchdb
    environment:
      BLOB_URL: "https://<blob-name>.blob.core.windows.net/<container-name>/<file-name>?<SASS token>"
      FILE_NAME: "couchdb-backup.tar.gz"
      PATH_TO_BACKUP: "/couchdb"
    deploy:
      replicas: 0
      restart_policy:
        condition: none
```
