#!/bin/bash
set -u

#
# Downloading bootstrap file
#
printf "** Downloading bootstrap file ***\n"
cd /root/.bitcore/
if [ ! -d ${CONFIG_PATH}/blocks ] && [ "$(curl -Is https://${WEB}/${BOOTSTRAP} | head -n 1 | tr -d '\r\n')" = "HTTP/1.1 200 OK" ] ; then \
        wget https://${WEB}/${BOOTSTRAP}; \
        tar -xvzf ${BOOTSTRAP};
fi

#
# Starting BitCore Service
#
# Hint: docker not supported systemd, use of supervisord
printf "*** Starting BitCore Service ***\n"
exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
