FROM jenkins/jenkins
USER root

# install ansible
RUN apt update && apt install python-pip -y && pip install ansible

# install docker
RUN curl -fsSL https://get.docker.com | bash

# install gcloud sdk
RUN curl -sSL https://sdk.cloud.google.com | bash -s -- --disable-prompts

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

USER jenkins
