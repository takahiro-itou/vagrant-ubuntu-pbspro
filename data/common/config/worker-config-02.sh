#!/bin/bash  -xue

scriptDir=$(dirname  $0)

sudo  service pbs start    ||  exit  $?

pushd  ${scriptDir}        ||  exit  $?

sudo  /bin/bash  -xu  ./mom_reset_config   ||  exit  $?
sudo  /bin/bash  -xu  ./mom_create_vnodes  ||  exit  $?

sudo  service pbs restart  ||  exit  $?

popd
sleep  5
