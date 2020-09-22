#!/bin/sh

freebsd_version=$(freebsd-version -u)

migration_version="unknown"
if echo "$freebsd_version" | grep -q "11.3"; then
    migration_version=11.3
fi
if echo "$freebsd_version" | grep -q "12.2"; then
    migration_version=12.1
fi

if [ $migration_version != "unknown" ]; then
    # Run migrations
    ./usr/local/migration/$migration_version/0.0.1.sh
fi

sysrc -f /etc/rc.conf jackett_enable="YES"