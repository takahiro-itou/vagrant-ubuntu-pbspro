#!/bin/bash  -xu

scriptDir=$(dirname  $0)
vagrantDir=${scriptDir}/../vagrant
pushd  ${vagrantDir}

time  vagrant  resume ; echo 0

popd
