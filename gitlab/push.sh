#!/bin/bash

IMAGE_NAME=127.0.0.1:5000/johnellis1392/gitlab

docker build . -t ${IMAGE_NAME} && \
docker push ${IMAGE_NAME}

