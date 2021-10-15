#!/bin/sh

echo "Running migration for 1.0.0"

echo "Remove mono dependency"
pkg remove -fy mono6.8

echo "Patching mono to 6.8.0"
pkg install -y /usr/local/migration/bin/mono-6.8.0.105.txz