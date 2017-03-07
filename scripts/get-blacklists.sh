#!/bin/bash

# Get the blacklists you're interested in. We'll be using ...
#
# We'll be using wget to fetch the blacklist(s). If you'd like to configure
# wget so that a custom User-Agent string is used instead of the default, copy
# the included wgetrc file to your home directory.
#
# You may want to run this script as a daily cronjob.

URL="http://www.talosintelligence.com/feeds/ip-filter.blf"

SPITEFUL_HOME=$(pwd)

echo "[*] downloading to ${SPITEFUL_HOME}/blacklists/"

cd $SPITEFUL_HOME/blacklists/

wget $URL -O /tmp/ip-filter.blf

if [ -f "$SPITEFUL_HOME/blacklists/ip-filter.blf" ]; then
    # Compare the two files
    echo "[*] checking if updates are present..."
else
    echo "[*] ... "
fi

