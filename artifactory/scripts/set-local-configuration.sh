#!/bin/bash
set -eo pipefail

curl -m 5 -f -X PATCH \
-u ${ART_CREDS_USR}:${ART_CREDS_PSW} \
-H 'Content-Type: application/yaml' \
http://localhost:8082/artifactory/api/system/configuration \
-d '
urlBase: http://artifactory-ce-demo:8082
localRepositories: #Local repositories configuration
    conan-local: #The local repository name
        type: conan #The package type
'
# we create the repositories here for the environment
# this also bypasses the first-run screen