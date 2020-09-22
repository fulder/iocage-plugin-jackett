#!/bin/sh

echo "Running migration for 0.0.1"

echo "Patching mono to 6.8.0"
pkg install -y /usr/local/migration/bin/mono-6.8.0.105.txz
