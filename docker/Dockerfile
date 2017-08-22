# Docker container for acting as a docker controller.
# Cuz somtimes you want to abstract your abstractions :3
FROM ubuntu:latest
# VOLUME /var/run/docker.sock

RUN apt-get update && apt-get install -y curl python python-pip
RUN pip install --upgrade pip
RUN addgroup --system --gid 1000 docker && \
	adduser --system --ingroup docker --uid 1000 --disabled-password docker

# Get docker
RUN curl -sSL https://get.docker.com | sh
RUN pip install docker-compose

# USER docker
CMD [ "/bin/bash" ]

