#!/bin/bash

# (cd gitlab && ./push.sh)
# (cd jenkins && ./push.sh)
docker stack deploy --compose-file docker-compose.yaml jenkins

