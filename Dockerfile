#FROM ubuntu:latest
FROM registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest
#RUN apt-get update \
#    && apt-get install -y wget vim git curl \
#    && rm -rf /var/lib/apt/lists/*

WORKDIR /
RUN mkdir /down
ADD ./endpoint.sh /
RUN chmod a+x /endpoint.sh

#FROM registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest

#RUN wget https://dl.pstmn.io/download/latest/linux64 -o Postman-linux-x64-6.2.2.tar.gz
#RUN  git clone https://github.com/kubernetes-incubator/external-storage.git
#RUN  git clone https://github.com/ECNUdase/pdf.git

#RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-15.6.0.tar.gz
#RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/webmin/webmin.tgz
#RUN wget http://downloads.asterisk.org/pub/telephony/dahdi-linux-complete/releases/dahdi-linux-complete-2.11.1+2.11.1.tar.gz
#RUN wget http://downloads.asterisk.org/pub/telephony/libpri/releases/libpri-1.6.0.tar.gz
#RUN wget http://downloads.asterisk.org/pub/telephony/libss7/releases/libss7-2.0.0.tar.gz
#RUN wget https://files.freeswitch.org/releases/freeswitch/freeswitch-1.8.1.tar.gz

RUN wget https://storage.googleapis.com/kubernetes-helm/helm-v2.11.0-linux-amd64.tar.gz



ENTRYPOINT exec /endpoint.sh