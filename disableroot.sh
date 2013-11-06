#!/bin/sh
# This script will disable root given that it's run from the jamf binary.
# This script also assumes that jamf passes in username and password for an admin.

dsenableroot -d -u $4 -p $5