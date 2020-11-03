# /bin/sh


openrc

touch /run/openrc/softlevel

rc-update add sshd

 adduser -D admin

  echo admin:admin | chpasswd

/etc/init.d/sshd start

supervisord   -c /etc/supervisord.conf