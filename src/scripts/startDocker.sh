#!/usr/bin/env bash
docker run -d --restart=always --name jenkins --network=local-development --hostname jenkins.chr1smy3rs.com --network-alias=jenkins.chr1smy3rs.com -p 8080:8080 -p 50000:50000 -v /Users/chr1smy3rs/jenkins_home:/var/jenkins_home jenkins:alpine

docker run -d  --restart=always --name artifactory --network=local-development --hostname artifactory.chr1smy3rs.com --network-alias=artifactory.chr1smy3rs.com -p 8081:8081 -v /Users/chr1smy3rs/artifactory/data:/var/opt/jfrog/artifactory/data -v /Users/chr1smy3rs/artifactory/etc:/var/opt/jfrog/artifactory/etc -v /Users/chr1smy3rs/artifactory/logs:/var/opt/jfrog/artifactory/logs docker.bintray.io/jfrog/artifactory-oss:latest