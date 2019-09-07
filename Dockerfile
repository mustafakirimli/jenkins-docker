FROM jenkins/jenkins
USER root
RUN apt update && apt install python-pip && pip install ansible -y
USER jenkins
