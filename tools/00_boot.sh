#!/bin/bash  -xu

scriptDir=$(dirname  $0)
vagrantDir=${scriptDir}/../vagrant
pushd  ${vagrantDir}

time  vagrant  up ; echo 0

popd
