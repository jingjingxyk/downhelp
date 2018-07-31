FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y wget vim
#    && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN wget https://console.cloud.google.com/gcr/images/google-containers/GLOBAL?project=google-containers
ENTRYPOINT exec  tail -f /dev/null