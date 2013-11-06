#!/bin/bash

#### disableInternetSharing.sh
#### 
#### This is a script that disables Internet Sharing. 
#### 
####



####
#### Read in the parameters
####

sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.nat NAT -dict Enabled -int 0
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.InternetSharing.plist
