FROM jenkins/jenkins
USER root

# install ansible
RUN apt update && apt install python-pip -y && pip install ansible

# install docker
RUN curl -fsSL https://get.docker.com | bash

USER jenkins
