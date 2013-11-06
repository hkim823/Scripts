#!/bin/bash

#Script to run softwareupdate on 10.8
#Installs all updates that don't require a restart, if it does require a restart, caches downloads and prepares machine for update install during logout process
#SWUL is a list of software updates to install
#SWULER is used to allow stdout for No Software Updates Available
#NoRestartUpdates is a list of software updates that do not require restart
 
SWUL=`/usr/sbin/softwareupdate -l | /usr/bin/awk '{printf "%s", $0}'`
SWULER=`/usr/sbin/softwareupdate -l 2>&1 | /usr/bin/head -1`
NoRestartUpdates=`/usr/sbin/softwareupdate -l | /usr/bin/grep -v restart | /usr/bin/grep -B1 recommended | /usr/bin/grep -v recommended | /usr/bin/awk '{print $2}' | /usr/bin/awk '{printf "%s ", $0}'`
	
if [ "$SWULER" == "No new software available." ]; then
	/bin/echo "$SWULER"
	exit 1

	elif [[ "$SWUL" == *"[restart]"* ]]; then
		echo "Downloading Updates that require Restart"
		/usr/bin/sudo /usr/sbin/softwareupdate -d -a
		/usr/libexec/PlistBuddy -c "Copy CompletedProducts InstallAtLogout" /Library/Updates/index.plist
		/usr/bin/touch /var/db/.SoftwareUpdateAtLogout
		/bin/chmod og-r /var/db/.SoftwareUpdateAtLogout
		/usr/libexec/PlistBuddy -c "Add -RootInstallMode STRING YES" /var/db/.SoftwareUpdateOptions
		/usr/libexec/PlistBuddy -c "Add -SkipConfirm STRING YES" /var/db/.SoftwareUpdateOptions
		/bin/chmod og-r /var/db/.SoftwareUpdateOptions
		
		elif [[ "$SWUL" == *"[recommended]"* ]]; then
			/bin/echo "Installing Updates that does not require Restart"
			/usr/bin/sudo /usr/sbin/softwareupdate -i $NoRestartUpdates
fi
	 
exit 0