#!/usr/bin/env bash
TIME=`date "+%Y%m%d%H%M"`
git add .
git commit -a -m "dockerfile file change ${TIME}"
#git push -u origin master



GIT_REVISION=`git log -1 --pretty=format:"%h"`
tag_name=release-vdownhelp_${TIME}_${GIT_REVISION}
echo ${tag_name}


git push origin master

git tag ${tag_name}

git push origin ${tag_name}


#docker build -t registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest -f ./Dockerfile .
#docker push registry.cn-beijing.aliyuncs.com/jingjingxyk/ubuntu:latest