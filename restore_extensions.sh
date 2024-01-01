#!/bin/bash
source "./paths/paths_var.sh"

# Pull latest changes from git
git pull origin main

# Decompress LED_TAR to LED_WORKING. Copy LED_WORKING to LED_ROOT. Remove LED_WORKING and LED_TAR
tar -xzvf $LED_TAR -C $LED_WORKING
cp -r $LED_WORKING $LED_ROOT
rm -rf $LED_WORKING
rm -rf $LED_TAR

# Decompress SED_TAR to SED_WORKING. Copy SED_WORKING to SED_ROOT. Remove SED_WORKING and SED_TAR
tar -xzvf $SED_TAR -C $SED_WORKING
cp -r $SED_WORKING $SED_ROOT
rm -rf $SED_WORKING
rm -rf $SED_TAR

echo $RESTORE_SUCCESS_MESSAGE