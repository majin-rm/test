FROM jenkins/agent:jdk21

USER root
RUN apk add python3
RUN apk add py3-pip

USER jenkins