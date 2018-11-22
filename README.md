# OpenGApps for XGIMI Z6 Polar

Build XGIMI Z6 Polar (synsepalum_R) device compatible OpenGApps package.

## Build

1. Download [OpenGApps](https://opengapps.org/) package for Android 6.0 (ARM64)
2. Rename package to `<project root>/update/packages.zip`
3. Build OpenGApps OTA package `./build.sh update`
4. Build fsck OTA package `./build.sh system`
5. Build boot+adb OTA package `./build.sh boot+adb` (optional)

NOTE: `tvstock` does not get out-of-box support on this device.

## Install

Stock firmware from XGIMI may containing filesystem error in `/system` partition.
The `system-signed.zip` is build to fix this problem (with static linked `e2fsck` binary from
[this thread](https://forum.xda-developers.com/tools/general/ext2-3-4-filesystem-create-fix-tools-t3682377)).

To flash built images (require ROOT access):

1. Enable ADB network debugging on device
2. Run `./shell.sh <device IP address> && ./flash.sh system-signed.zip`
3. Run `./shell.sh <device IP address> && ./flash.sh update-signed.zip`, after reboot

### boot+adb

ADB server is disabled on boot for stock ROM for security.

Flash `boot+adb/boot.img` with fastboot or the OTA package enables adb at boot time
which saves time for testing and debugging.
While code to unpack/pack the u-boot image is not available in this repository or
anywhere else, use the package at your own risk :-)

## License

(The MIT License)

