#!/bin/sh

chown -R root /usr/local/share/jackett
sysrc -f /etc/rc.conf jackett_enable="NO"