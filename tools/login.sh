#!/bin/bash  -xu

scriptDir=$(dirname  $0)
vagrantDir=${scriptDir}/../vagrant
pushd  ${vagrantDir}

vagrant  ssh  node00

popd
