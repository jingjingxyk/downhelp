#!/usr/bin/env bash
git add .
git commit -a -m "add file"



TIME=`date "+%Y%m%d%H%M"`
GIT_REVISION=`git log -1 --pretty=format:"%h"`
echo IMAGE_NAME=downhelp:${TIME}_${GIT_REVISION}

#git push -u origin master
#docker build -t registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest -f ./Dockerfile .
#docker push registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest