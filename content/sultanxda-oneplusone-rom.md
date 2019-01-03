Title: Sultanxda's OnePlus One Rom
Date: 2015-09-29 09:00
Modified: 2015-09-29 09:00
Category: Misc
Tags: Misc
Slug: sultanxda-oneplusone-rom
Author: Victory Napitupulu

After running the OTA update to CyanogenMod 12.1 I ran into many of the same battery draining, camera, and screen sleeping issues reported by users on the OnePlus One forums and [/r/oneplus](//web.archive.org/web/20160303001100/https://www.reddit.com/r/oneplus) reddit discussions. I really wanted to keep this phone as stock as possible, however since OnePlus broke away from CyanogenMod in favour of OxygenOS this no longer seemed feasible.

So, with much reading and digging a came across brief mention of Sultanxda’s rom in reddit being touted as one of the most table Android Lollipop roms available for the OnePlus One. Since the phone was still stock, I needed to flash a custom recovery (TWRP) before I could flash Sultanxda’s rom.

1. Download and install ADB drivers (for Windows) from http://adbdriver.com/downloads/
2. Download [Sultanxda’s OnePlus One Rom](//forum.xda-developers.com:80/oneplus-one/orig-development/rom-kernel-unofficial-cyanogenmod-12-1-t3120259) and save to internal storage of your phone
3. Download latest [TWRP recovery](//forum.xda-developers.com/showthread.php?t=2766186) and save to the same directory containing fastboot.exe as recovery.img
4. Turn off phone and boot into **fastboot** mode by holding volume up + power
5. Launch command prompt window from inside ADB folder (Hold Shift and Right-click inside white space of folder, then click **“Open Command Window here“**)
6. In command prompt run:
 **fastboot devices
 fastboot oem unlock
 fastboot reboot**
 If fastboot devices command fails, double-check ADB drivers are installed correctly
7. **Enable USB debugging** – Settings > About Phone > Tab on Build number 7 times to enable Developer Options. Then Settings > Developer Options > Enable Eandroid Debugging (in Debugging section)
8. **Disable CM Protection** – Settings > Developer Options. Disable ‘Update recovery with system updates’
9. Turn phone off and boot back into fastboot mode
10. Launch command prompt and run:
 **fastboot flash recovery recovery.img**
11. Turn phone off then immediately boot into recovery – hold volume up + power (failing this step will result in CyanogenMod overwriting your recovery with stock recovery and you’ll have to redo this all again)
12. Unlock TWRP to be persistent (only need to do this once)
13. Enable SuperUser mode (OpenSU no longer works)
14. Flash custom rom via TWRP and you’re done
Enjoy going back to rock-solid stability and even a slight performance improvement.
