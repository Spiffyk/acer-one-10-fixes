# Acer One 10 S1003 fixes

This repository contains fixes for Ubuntu on Acer One 10 S1003.

## Features
### What's fixed by this

* Wireless network
  * Fixed by [Armbian's patched firmware](https://github.com/armbian/firmware)

* Audio
  * Integrated speakers and headphones
  * Pulseaudio no longer crashes on login

* Screen brightness
  * Fixed by deferring modprobe of `i915` module
  * Workaround for [DRI's issue 95671](https://bugs.freedesktop.org/show_bug.cgi?id=96571)

* i915 firmware
  * Nothing is proven to have been broken by the missing firmware but
    the blobs are available on Intel's site so it is included here


### What does not work (yet?)

* Screen auto-rotate

* Bluetooth

* GNOME on Wayland is glitchy
  * Use XOrg for the time being

* HDMI audio
  * Disabled because it crashes PulseAudio and leaves the tablet completely
    without sound
