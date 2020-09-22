#!/bin/sh

./usr/local/migration/0.0.1.sh

chown -R jackett /usr/local/share/jackett
sysrc -f /etc/rc.conf jackett_enable="YES"