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

#RUN wget https://storage.googleapis.com/kubernetes-helm/helm-v2.11.0-linux-amd64.tar.gz
#RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /docker-compose
#RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-Linux-x86_64" -o /down/docker-compose
#RUN curl -L "http://director.downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2018-06-29/2018-06-27-raspbian-stretch-lite.zip" -o /down/2018-06-27-raspbian-stretch-lite.zip
#RUN curl -L "http://director.downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2018-06-29/2018-06-27-raspbian-stretch-lite.zip" -o /down/2018-06-27-raspbian-stretch-lite.zip

RUN wget https://subsurface-divelog.org/downloads/Subsurface-4.6.4-x86_64.AppImage  -O /down/Subsurface-4.6.4-x86_64.AppImage
RUN wget https://github.com/probonopd/AppImages/releases/download/1/Subsurface-4.5.1.251-i386.AppImage  -O /down/Subsurface-4.5.1.251-i386.AppImage

ENTRYPOINT exec /endpoint.sh