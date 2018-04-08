#!/bin/bash

# Root user check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!" 
   exit 1
fi

# Copy brcm firmware
echo "--- Fixing Broadcom SDIO WiFi ---"
cp -f firmware/brcm/* /lib/firmware/brcm/

# Blacklist HDMI audio
echo "--- Fixing audio ---"
echo "blacklist snd-hdmi-lpe-audio" > /etc/modprobe.d/blacklist-acer-hdmi.conf

# Defer i915
echo "--- Fixing screen brightness ---"
echo "blacklist i915" > /etc/modprobe.d/blacklist-acer-i915.conf
echo "modprobe i915" > /etc/init.d/acer-i915-deferred
chmod +x /etc/init.d/acer-i915-deferred
ln -s ../init.d/acer-i915-deferred /etc/rc2.d/S99acer-i915-deferred

# Copy intel firmware
echo "--- Fixing i915 firmware errors ---"
cp -f firmware/i915/* /lib/firmware/i915/

echo "--- Updating initramfs ---"
update-initramfs -u -k all

echo "All done, please reboot."
