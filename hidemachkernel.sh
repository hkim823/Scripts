#!/bin/sh

hiddenflagstatus=`stat -r /mach_kernel | awk '{print $15}'`

if [ "$hiddenflagstatus" = "0" ]; then 
	chflags hidden /mach_kernel; else
	exit 1
fi

	exit 0

