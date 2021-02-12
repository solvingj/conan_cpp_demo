#!/bin/bash
set -eo pipefail

# Wait for Artifactory to be ready to accept connections
for i in $(seq 30) ; do
    curl -f -u ${ART_CREDS_USR}:${ART_CREDS_PSW} http://localhost:8082/artifactory/api/system/ping && break
    if [[ $i -ge 30 ]]; then
        echo "Timed out waiting for Artifactory"
        exit 152
    fi

    sleep 5
done