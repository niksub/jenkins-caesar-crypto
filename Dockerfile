FROM jenkins/jenkins:lts-alpine

USER root
RUN apt-get update && apt-get install -y python-pip python-dev build-essential enchant && rm -rf /var/lib/apt/lists/*
RUN easy_install pip
RUN pip install pyenchant

USER jenkins
