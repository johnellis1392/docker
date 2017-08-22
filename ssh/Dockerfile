FROM ubuntu:latest
WORKDIR /usr/src/app
EXPOSE 22

RUN addgroup --gid 1000 docker && \
	adduser --disabled-password --ingroup docker --uid 1000 docker

RUN apt-get update && apt-get install -y openssh-server
COPY . /

# Restart sshd service.
# NOTE: Get status == `service ssh status`
RUN service ssh restart
CMD [ "/bin/bash" ]

