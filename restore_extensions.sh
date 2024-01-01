#!/bin/bash

source "./paths/paths_var.sh"

# Decompress LED_TAR to LED_WORKING
tar -xzvf $LED_TAR -C $LED_WORKING

# COPY LED_WORKING to LED_ROOT
cp -r $LED_WORKING $LED_ROOT

# Remove LED_WORKING and LED_TAR
rm -rf $LED_WORKING
rm -rf $LED_TAR

# Decompress SED_TAR to SED_WORKING
tar -xzvf $SED_TAR -C $SED_WORKING

# COPY SED_WORKING to SED_ROOT
cp -r $SED_WORKING $SED_ROOT

# Remove SED_WORKING and SED_TAR
rm -rf $SED_WORKING
rm -rf $SED_TAR