#!/bin/sh

if [ `uname -r` = 12.3.0 ]; then
	/usr/bin/sudo /usr/sbin/softwareupdate -d OSXUpd10.8.4-10.8.4
	/usr/libexec/PListBuddy -c "Copy CompleteProducts InstallAtLogout" /Library/Updates/index.plist
	/usr/bin/touch /var/db/.SoftwareUpdateAtLogout
	/bin/chmod og-r /var/db/.SoftwareUpdateAtLogout
	/usr/libexec/PListBuddy -c "Add -RootInstallMode STRING YES" /var/db/.SoftwareUpdateOptions
	/usr/libexec/PListBuddy -c "Add -SkipConfirm STRING YES" /var/db/.SoftwareUpdateOptions
	/bin/chmod og-r /var/db/.SoftwareUpdateOptions

elif [ `uname -r` = 12.2.1 ]; then
	/usr/bin/sudo /usr/sbin/softwareupdate -d OSXUpdCombo10.8.4-10.8.4
	/usr/libexec/PListBuddy -c "Copy CompleteProducts InstallAtLogout" /Library/Updates/index.plist
	/usr/bin/touch /var/db/.SoftwareUpdateAtLogout
	/bin/chmod og-r /var/db/.SoftwareUpdateAtLogout
	/usr/libexec/PListBuddy -c "Add -RootInstallMode STRING YES" /var/db/.SoftwareUpdateOptions
	/usr/libexec/PListBuddy -c "Add -SkipConfirm STRING YES" /var/db/.SoftwareUpdateOptions
	/bin/chmod og-r /var/db/.SoftwareUpdateOptions
		
	elif [ `uname -r` = 12.2.0 ]; then
		/usr/bin/sudo /usr/sbin/softwareupdate -d OSXUpdCombo10.8.4-10.8.4
		/usr/libexec/PListBuddy -c "Copy CompleteProducts InstallAtLogout" /Library/Updates/index.plist
		/usr/bin/touch /var/db/.SoftwareUpdateAtLogout
		/bin/chmod og-r /var/db/.SoftwareUpdateAtLogout
		/usr/libexec/PListBuddy -c "Add -RootInstallMode STRING YES" /var/db/.SoftwareUpdateOptions
		/usr/libexec/PListBuddy -c "Add -SkipConfirm STRING YES" /var/db/.SoftwareUpdateOptions
		/bin/chmod og-r /var/db/.SoftwareUpdateOptions
fi

exit 0