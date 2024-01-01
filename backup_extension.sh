#!/bin/bash

# Local extension directory on system
LED_DIR="$HOME/.local/share/gnome-shell/extensions"
LED_WORK="./local_extensions"

# System extension directory on system
SED_ROOT="/usr/share/gnome-shell/extensions"
SED_WORK="./system_extensions"

# copy LED_DIR to working directory. Compress, then remove LED_DIR
cp -r $LED_DIR $LED_WORK
tar -czvf local_extensions.tar.gz $LED_WORK
rm -rf $LED_WORK

# Copy SED_ROOT to working directory. Compress, then remove SED_ROOT
cp -r $SED_ROOT $SED_WORK
tar -czvf system_extensions.tar.gz $SED_WORK
rm -rf $SED_WORK