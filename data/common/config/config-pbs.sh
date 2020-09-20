#!/bin/bash  -xue

scriptDir=$(dirname  $0)
qmgr=/opt/pbs/bin/qmgr


#################################################################
##
##    Setup Master.
##

sudo  sed  -i.bak  \
    -f ${scriptDir}/setup-pbsconf-master.sed  \
    /etc/pbs.conf  ||  exit  $?
echo  'PBS_SERVER_HOST_NAME=node00'  |  sudo  tee -a  /etc/pbs.conf

# マスター node00 がワーカーも兼ねるのでこれも実行
/bin/bash  -xue  ${scriptDir}/worker-config-02.sh  ||  exit  $?

#################################################################
##
##    Setup Worker(s).
##

##################################################################
##
##    Create Nodes.
##

##################################################################
##
##    Finish.
##

qstat  -Bf
pbsnodes  -avS
