# Example inspired by Jesse Frazelle's fabulous docker suite available here:
# https://github.com/jessfraz/dockerfiles/blob/master/glxgears/Dockerfile
FROM debian:latest

RUN apt-get update && apt-get install -y \
	mesa-utils --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

ENV LIBGL_DEBUG verbose
ENTRYPOINT [ "glxgears" ]

