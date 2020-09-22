#!/bin/sh

./usr/local/migration/0.0.1.sh

sysrc -f /etc/rc.conf jackett_enable="YES"