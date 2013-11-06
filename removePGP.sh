#!/bin/sh
#completely removes PGP Desktop from computer

sudo /Applications/PGP.app/Contents/Resources/uninstall_pgp.pl --uid 501
sudo killall PGP
sudo killall PGP\ Engine
sudo killall pgp-agent
sudo killall PGPdiskEngine
sudo rm -rf /Library/Receipts/PGP\ Desktop.pkg/
sudo rm -rf /Library/Application\ Support/PGP/
sudo rm -rf /Library/Contextual\ Menu\ Items/PGPcontext.plugin/
sudo rm -rf /Library/Extensions/PGPdiskDriver.kext/
sudo rm -rf /Library/Extensions/PGPnke.kext/
sudo rm -rf /Library/Frameworks/PGP.framework/
sudo rm -rf /Library/Frameworks/PGPclient.framework/
sudo rm -rf /Library/Frameworks/PGPproxy.framework/
sudo rm -rf /Library/Frameworks/PGPui.framework/
sudo rm -rf /Library/Frameworks/PGPwde.framework/
sudo rm -rf /Library/Mail/Bundles/PGP*
sudo rm -rf /Library/Receipts/PGP.pkg/
sudo rm -rf /Applications/PGP.app/
sudo rm -rf /Applications/PGP\ Shredder.app/
sudo rm -rf /Library/LaunchDaemons/com.pgp.framework.PGPwde.plist
sudo rm -rf /Library/PrivilegedHelperTools/com.pgp.framework.PGPwde
sudo rm -rf /private/var/run/com.pgp.framework.PGPwde.socket
sudo rm -rf ~/Library/Preferences/com.pgp.*

exit 