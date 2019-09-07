FROM jenkins/jenkins
USER root
RUN apt update && apt install python-pip -y && pip install ansible
USER jenkins
