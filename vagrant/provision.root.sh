#! /bin/bash  -xue

test  -f /root/.provision.root  &&  exit 0

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

# ネットワークの設定
cp   -pv  /etc/hosts  /etc/hosts.org
sed  -i.bak  -e '/^127.0.0.1\tnode[0-9]\+\tnode[0-9]\+$/d'  /etc/hosts
echo  -e  "192.168.64.100\tnode00"  |  tee -a  /etc/hosts
echo  -e  "192.168.64.101\tnode01"  |  tee -a  /etc/hosts
echo  -e  "192.168.64.102\tnode02"  |  tee -a  /etc/hosts
echo  -e  "192.168.64.103\tnode03"  |  tee -a  /etc/hosts

date  >  /root/.provision.root
