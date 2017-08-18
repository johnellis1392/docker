# Image available here:
# https://hub.docker.com/r/gitlab/gitlab-ce/
#
# Dockerfile Repository:
# https://gitlab.com/gitlab-org/omnibus-gitlab/tree/master/docker
#
# Documentation:
# https://docs.gitlab.com/omnibus/docker/
FROM gitlab/gitlab-ce:latest
VOLUME /etc/gitlab
VOLUME /var/log/gitlab
VOLUME /var/opt/gitlab

EXPOSE 80/tcp
EXPOSE 22/tcp
EXPOSE 443/tcp
EXPOSE 8080/tcp

# Copy configuration
COPY gitlab.rb /etc/gitlab/gitlab.rb

