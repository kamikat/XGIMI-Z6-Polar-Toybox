# XGIMI Z6 Polar Toybox

Customization packages build for XGIMI Z6 Polar (synsepalum_R) device (require root access).

## e2fsck

Stock firmware from XGIMI may containing filesyscheck error in `/system` partition.
Fix errors in filesystem should enable `rw` access to `/system` partition.

1. Build fsck OTA package `./build.sh syscheck`
2. Connect to device `./shell.sh <device IP address>`
3. Install with recovery `./flash.sh syscheck-signed.zip`

The `syscheck` package with static linked `e2fsck` binary from [this XDA thread](https://forum.xda-developers.com/tools/general/ext2-3-4-filesystem-create-fix-tools-t3682377).

## ADB

ADB server is disabled on boot for stock ROM for security.

Flash `boot+adb/boot.img` with fastboot or the OTA package enables adb at boot time
which saves time for testing and debugging.
While code to unpack/pack the u-boot image is not available in this repository or
anywhere else, use the package at your own risk :-)

1. Build boot+adb OTA package `./build.sh boot+adb` (optional)
2. Flash `./shell.sh <device IP address> && ./flash.sh boot+adb-signed.zip`.

## Xposed Framework

1. Download [Xposed Installer](https://forum.xda-developers.com/showthread.php?t=3034811)
2. Build Xposed v89 `./build.sh xposed-v89`
3. Connect to device `./shell.sh <device IP address>`
4. Install with recovery `./flash.sh xposed-v89-signed.zip`

## OpenGApps (Not work)

1. Download [OpenGApps](https://opengapps.org/) package for Android 6.0 (ARM64)
2. Rename package to `<project root>/update/packages.zip`
3. Build OpenGApps OTA package `./build.sh update`
4. Connect to device `./shell.sh <device IP address>`
5. Flash `./flash.sh update-signed.zip`

NOTE1: Ensure you have at least 300MB free space on `/system` before flash OpenGApps. The installation can fail silently for insufficient space.
NOTE2: Does not work on Maxim ROMs, need help!

## License

(The MIT License)

