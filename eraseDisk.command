#!/bin/sh

if [ "`/usr/sbin/diskutil cs list`" = "No CoreStorage logical volume groups found" ] 
	then
		/usr/sbin/diskutil eraseDisk JHFS+ "Macintosh HD" disk0 
	else 
		/usr/sbin/diskutil cs delete `/usr/sbin/diskutil cs list | /usr/bin/grep "Logical Volume Group" | /usr/bin/awk '{print $5}'`
		/usr/sbin/diskutil eraseDisk JHFS+ "Macintosh HD" disk0
fi
			
exit 0