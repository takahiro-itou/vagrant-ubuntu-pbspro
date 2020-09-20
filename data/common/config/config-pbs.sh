#!/bin/bash  -xue

scriptDir=$(dirname  $0)

#################################################################
##
##  Setup Master.
##

sudo  sed  -i.bak  \
    -f ${scriptDir}/setup-pbsconf-master.sed  \
    /etc/pbs.conf  ||  exit  $?
echo  'PBS_SERVER_HOST_NAME=node00'  |  sudo  tee -a  /etc/pbs.conf
