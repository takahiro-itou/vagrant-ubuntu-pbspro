#!/bin/bash  -xu

scriptDir=$(dirname  $0)
vagrantDir=${scriptDir}/../vagrant
pushd  ${vagrantDir}
mkdir  -p  /cygdrive/w/Vagrant/ubuntu-pbspro/vagrant

time  vagrant  destroy -f
time  vagrant  up ; echo 0

popd
