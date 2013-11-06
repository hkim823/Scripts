#! /bin/sh
#this script will erase metadata_never_index from the root folder, and reset Spotlight

rm /.metadata_never_index
rm /.fseventsd/no_log
sudo mdutil -E -i on /
