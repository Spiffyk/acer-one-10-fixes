#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "--- Copying intel firmware"
cp intel/* /lib/firmware/i915/

echo "--- Copying broadcom firmware"
cp brcm/* /lib/firmware/brcm/

echo "--- Copying HDMI blacklist"
cp sound/blacklist-acersnd.conf /etc/modprobe.d/

echo "--- Updating initramfs"
update-initramfs -u

echo "ALL DONE, PLEASE REBOOT"
