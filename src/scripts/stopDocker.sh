#!/usr/bin/env bash

docker update --restart=no jenkins
docker stop jenkins
docker rm jenkins
docker update --restart=no artifactory
docker stop artifactory
docker rm artifactory