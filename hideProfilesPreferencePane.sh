#!/bin/sh
#Hide Profiles PreferencePane

/usr/bin/sudo /usr/bin/defaults write /Users/$3/Library/Preferences/com.apple.systempreferences.plist HiddenPreferencePanes -array-add com.apple.preferences.configurationprofiles
/usr/bin/sudo /usr/sbin/chown $3:staff /Users/$3/Library/Preferences/com.apple.systempreferences.plist
/usr/bin/sudo /usr/bin/chflags hidden /System/Library/PreferencePanes/Profiles.prefPane
/usr/bin/sudo /usr/bin/chmod 700 /System/Library/PreferencePanes/Profiles.prefPane
