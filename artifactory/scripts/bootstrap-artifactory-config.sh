#!/bin/bash
set -eo pipefail

/entrypoint-artifactory.sh &
/scripts/wait-for-artifactory.sh
/scripts/set-local-configuration.sh &> set-local-configuration.log
