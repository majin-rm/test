FROM jenkins/agent:jdk21

# Switching to root to install stuff
USER root

# Installing all the dependencies
RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common curl
RUN add-apt-repository ppa:deadsnakes/ppa

# Installing python and pip
RUN apt-get update && apt-get install -y --no-install-recommends python3.12 python3-pip
RUN ln -s /usr/bin/python3.12 /usr/bin/python3 && ln -s /usr/bin/pip3 /usr/bin/pip

# Upgrading pip
RUN pip install --upgrade pip

# Switching back to normal user
USER jenkins