#!/bin/bash

# https://docs.docker.com/engine/api/get-started/#run-a-container

# Example using docker client api from curl
CONTAINER_ID=$( \
  curl --unix-socket /var/run/docker.sock -H 'Content-Type: application/json' \
  -d '{"Image": "alpine", "Cmd": ["echo", "hello world"]}' \
  -X POST http:/v1.24/containers/create | \
  jq -r '.Id')


# Start container
curl --unix-socket /var/run/docker.sock -X POST http:/v1.24/containers/${CONTAINER_ID}/start


# Wait for container to finish.
# Returns status code
curl --unix-socket /var/run/docker.sock -X POST http:/v1.24/containers/${CONTAINER_ID}/wait


# Get logs for container
curl --unix-socket /var/run/docker.sock "http:/v1.24/containers/${CONTAINER_ID}/logs?stdout=1"


