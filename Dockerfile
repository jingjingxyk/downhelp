FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y wget vim
#    && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN wget https://storage.googleapis.com/kubernetes-release/release/stable-1.11.txt
ENTRYPOINT exec  tail -f /dev/null