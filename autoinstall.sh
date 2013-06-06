
function get_ip(){
	HOST_IP=`LC_ALL=C /sbin/ifconfig eth0 | grep -m 1 'inet addr:'| cut -d: -f2 | awk '{print $1}'`
	MASK=`LC_ALL=C /sbin/ifconfig eth0 | grep -m 1 'inet addr:'| cut -d: -f4`
	GW=`route -n | grep 'UG[ \t]' | awk '{print $2}'`
	echo ${HOST_IP}
	echo ${MASK}
	echo ${GW}

}
function set_ip(){
:

}
function set_hostname(){
:

}

function set_apt_sources(){

:
}
