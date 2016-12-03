# Localhost Hacks

A project that contains the scripts and little hacks for running a complete development environment on my local system

## source code

* src
    * scripts - directory of scripts that are used for running a complete development environment
        * startDocker.sh - starts the required docker instances and sets them to auto restart
        * startPcfDev.sh - checks the status of the local development instance and runs it, if necessary
               
## docker instances

_**Please note**: you will need to change the volumes for your own system_

* jenkins docker image
`docker run -d --restart=always -p 8080:8080 -p 50000:50000 -v /Users/chr1smy3rs/jenkins_home:/var/jenkins_home --name jenkins jenkins:alpine` 

* local docker registry
`docker run -d -p 5000:5000 --restart=always --name registry --volume /Users/chr1smy3rs/registry:/var/lib/registry registry:2 `

* local github
`docker run --detach --restart=always --hostname gitlab.chr1smy3rs.com --publish 443:443 --publish 80:80 --publish 22:22 --name gitlab --volume /Users/chr1smy3rs/gitlab/config:/etc/gitlab --volume /Users/chr1smy3rs/gitlab/logs:/var/log/gitlab --volume /Users/chr1smy3rs/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce:latest `

* local nexus repository
`docker run -d -p 8081:8081 --restart=always --name nexus --volume /Users/chr1smy3rs/nexus-data:/sonatype-work sonatype/nexus:oss`
