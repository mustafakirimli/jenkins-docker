FROM jenkins/jenkins
USER root

# install ansible
RUN apt update && apt install python-pip -y && pip install ansible

# install docker
RUN apt-get update && apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt update && apt-get install docker-ce docker-ce-cli containerd.io -y

USER jenkins
