# Jenkins docker configuration:
# https://github.com/jenkinsci/docker/blob/master/README.md
FROM jenkins/jenkins:alpine
VOLUME /var/log/jenkins

EXPOSE 8080/tcp
EXPOSE 50000/tcp


# Set user to root for administrative setup
USER root

# Give jenkins user ownership to config directories
# RUN mkdir -p /var/jenkins_home/secrets
# RUN chown -R jenkins:jenkins /var/log/jenkins

# Example: Install extra build dependencies
# RUN apt-get update && apt-get install -y build-essential ruby


# Set user to pre-existing jenkins user
USER jenkins

