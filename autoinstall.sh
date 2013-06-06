#!/bin/bash
##############################################
TOP='/root/autoinstall'
#echo ${TOP}
. ${TOP}/functions
set_ip
if [ $? = 0 ];then
set_hostname
fi
set_apt_sources
if [ $? = 0 ];then
echo "set success"	
apt-get -y update && apt-get -y install nova-compute nova-network
fi
if [ $? = 0 ];then
novaconf='/etc/nova/nova.conf'
(
cat <<EE

EE
) > ${novaconf}
fi

