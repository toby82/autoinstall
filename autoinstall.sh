#!/bin/bash
##############################################
TOP='/root/autoinstall'
MY_PW='8782'
CONTROL_IP='172.18.200.103'
#echo ${TOP}
. ${TOP}/functions
set_ip
if [ $? = 0 ];then
	set_hostname
fi
set_apt_sources
if [ $? = 0 ];then
	apt-get -y update && apt-get -y install ubuntu-cloud-keyring && apt-get -y update && apt-get -y install nova-compute nova-network
	echo "set success"	
else
        echo "error" && exit 44
fi
if [ $? = 0 ];then
	set_novaconfig && service nova-compute restart && service nova-network restart
	echo "nova config success"
fi

