#!/bin/bash

uuid=`/usr/sbin/system_profiler SPHardwareDataType | grep "Hardware UUID" | cut -c22-57`

/bin/launchctl unload /System/Library/LaunchDaemons/com.apple.locationd.plist
/usr/bin/defaults write /private/var/db/locationd/Library/Preferences/ByHost/com.apple.locationd.$uuid LocationServicesEnabled -int 1
/usr/bin/defaults write /private/var/db/locationd/Library/Preferences/ByHost/com.apple.locationd.notbackedup.$uuid LocationServicesEnabled -int 1
/usr/sbin/chown -R _locationd:_locationd /var/db/locationd
/bin/launchctl load /System/Library/LaunchDaemons/com.apple.locationd.plist

exit 0