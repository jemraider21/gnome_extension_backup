#!/bin/bash

source "./paths/paths_var.sh"

# copy LED_DIR to working directory. Compress, then remove LED_DIR
cp -r $LED_ROOT $LED_WORKING
tar -czvf $LED_TAR $LED_WORKING
rm -rf $LED_WORKING

# Copy SED_ROOT to working directory. Compress, then remove SED_ROOT
cp -r $SED_ROOT $SED_WORKING
tar -czvf $SED_TAR $SED_WORKING
rm -rf $SED_WORKING

# Get the current date and time
CURRENT_DATETIME=$(date "+%Y-%m-%d %H:%M:%S")

# Commit and push to git
git add .
git commit -m "Created extension backup on $CURRENT_DATETIME"
git push origin HEAD:master
echo "Backup completed at $CURRENT_DATETIME"