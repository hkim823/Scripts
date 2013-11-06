#!/bin/bash
echo networksetup -ordernetworkservices "Wi-Fi" `networksetup -listallnetworkservices | grep -v 'An asterisk ' |  sed s/\^'*'// | grep -v Wi-Fi | sed 's/.*/\"&\"/' | tr '\n' ' '` | bash