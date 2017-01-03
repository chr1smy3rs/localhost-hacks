# Localhost Hacks

A project that contains the scripts and little hacks for running a complete development environment on my local system

## source code

* src
    * scripts - directory of scripts that are used for running a complete development environment
        * startDocker.sh - starts the required docker instances and sets them to auto restart
        * startPcfDev.sh - checks the status of the local development instance and runs it, if necessary
        * stopDocker.sh - stops the docker instances from running
        * stopPcfDev.sh - stops the local development instance
               
## docker instances

_**Please note**: you will need to change the volumes for your own system_

* local jenkins
* local artifactory