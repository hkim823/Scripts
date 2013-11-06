#!/bin/sh

#set A_Sapient_Logo User Pictures

dscl . delete /Users/lsadmin Picture
dscl . delete /Users/lsadmin JPEGPhoto
dscl . create /Users/lsadmin Picture "/Library/User Pictures/Sapient/A_Sapient_Logo.tif"

exit 0