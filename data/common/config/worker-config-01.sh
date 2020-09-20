#!/bin/bash  -xue

scriptDir=$(dirname  $0)

sudo  sed  -i.bak  \
    -f ${scriptDir}/setup-pbsconf-worker.sed  \
    /etc/pbs.conf  ||  exit  $?
echo  'PBS_SERVER_HOST_NAME=node00'  |  sudo  tee -a  /etc/pbs.conf
