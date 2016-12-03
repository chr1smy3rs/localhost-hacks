#!/usr/bin/env bash
docker run -d --restart=always -p 8080:8080 -p 50000:50000 -v /Users/chr1smy3rs/jenkins_home:/var/jenkins_home --name jenkins jenkins:alpine

docker run -d -p 5000:5000 \
  --restart=always \
  --name registry \
  --volume /Users/chr1smy3rs/registry:/var/lib/registry \
  registry:2

docker run --detach \
  --restart=always \
    --hostname gitlab.chr1smy3rs.com \
    --publish 443:443 --publish 80:80 --publish 22:22 \
    --name gitlab \
    --volume /Users/chr1smy3rs/gitlab/config:/etc/gitlab \
    --volume /Users/chr1smy3rs/gitlab/logs:/var/log/gitlab \
    --volume /Users/chr1smy3rs/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest

docker run -d -p 8081:8081 \
  --restart=always \
  --name nexus \
  --volume /Users/chr1smy3rs/nexus-data:/sonatype-work \
  sonatype/nexus:oss