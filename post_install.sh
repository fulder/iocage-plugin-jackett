#!/bin/sh

echo "Pathing mono to 6.8.0"
pkg install -y bin/mono-6.8.0.105.txz

echo "Syncing CA certificates"
cert-sync /usr/local/etc/ssl/cert.pem

# Need to make jackett user own /usr/local/share/jackett folder
# this is needed for update to work properly
chown -R jackett /usr/local/share/jackett

# Enable and start service
sysrc jackett_enable=YES
service jackett start