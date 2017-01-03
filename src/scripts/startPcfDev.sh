#!/usr/bin/env bash
devStatus=`cf dev status`

if [[ $devStatus == *"Running"* ]]
then
    echo "Running!";
else
    cf dev start
    cf login -a https://api.local.pcfdev.io -u admin -p admin -o pcfdev-org --skip-ssl-validation
    cf enable-feature-flag diego_docker
fi
