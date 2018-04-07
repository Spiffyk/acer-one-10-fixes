# Acer One 10 S1003 fixes

This repository contains fixes for Ubuntu on Acer One 10 S1003.

## Features
### What's fixed by this
* Wifi
* Integrated audio
    * integrated speakers and headphones
    * Pulseaudio no longer crashes on login
* Missing Intel firmware
    * Not sure if something does not work because of this but the message kept popping up and was easy to fix so it's included

### What does not work (yet?)
* Accelerometer (automatic screen rotation)
* Screen brightness (a bug in kernel, apparently?)
* HDMI audio
    * this is disabled by the script because it crashed Pulseaudio
