#!/bin/sh
# stop pulse access service
# remove local guid from connstore.dat
# restart service
PLIST='/Library/LaunchDaemons/net.juniper.AccessService.plist'
CONNSTORE='/Library/Application Support/Juniper Networks/Junos Pulse/connstore.dat'

sudo launchctl unload $PLIST
sudo sed -i .bak '/machine "local"/{n;d;}' "$CONNSTORE"
sudo launchctl load $PLIST



