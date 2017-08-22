#!/bin/bash

docker exec -it $(docker ps -f name=jenkins_jenkins\* -q) /bin/sh

