FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y wget vim \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN wget https://dl.pstmn.io/download/latest/linux64 -o Postman-linux-x64-6.2.2.tar.gz
ENTRYPOINT exec  tail -f /dev/null