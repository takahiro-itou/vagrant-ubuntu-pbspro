#!/bin/bash  -xue

scriptDir=$(dirname  $0)


pushd  ${scriptDir}                         ||  exit  $?
sudo  /bin/bash  -xu  ./mom-reset-config    ||  exit  $?
sudo  service  pbs  start                   ||  exit  $?
sudo  /bin/bash  -xu  ./mom-create-vnodes   ||  exit  $?
sudo  service  pbs  restart                 ||  exit  $?

popd
sleep  5
