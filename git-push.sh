#!/usr/bin/env bash
git add .
git commit -a -m "dockerfile file change "
#git push -u origin master


TIME=`date "+%Y%m%d%H%M"`
GIT_REVISION=`git log -1 --pretty=format:"%h"`
tag_name=release-vdownhelp_${TIME}_${GIT_REVISION}
echo ${tag_name}


#git tag

#git push origin
#docker build -t registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest -f ./Dockerfile .
#docker push registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest