#!/bin/bash

docker exec -it $(docker ps -q -f name=jenkins_gitlab\*) /bin/bash

