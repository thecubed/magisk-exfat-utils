# Magisk exFAT Utils
Got a kernel that has exFAT support, but no `mkfs.exfat` or `fsck.exfat` binaries for `vold` to properly enable support?
No problem! Just install this and you'll be good to go.

## What does this do?
Simple, it provides binaries built from https://github.com/exfatprogs/exfatprogs
(previously by Samsung, now FOSS) as of release 1.2.1, static for aarch64,
per https://gist.github.com/jimklimov/e6775212f6c9781173e94f5085f32fdb instructions/notes
(in case you'd need to build your own and add here instead):

- `/system/bin/dump.exfat`
- `/system/bin/exfat2img`
- `/system/bin/exfatlabel`
- `/system/bin/fsck.exfat`
- `/system/bin/mkfs.exfat`
- `/system/bin/tune.exfat`

These binaries allow you to use in-kernel exFAT (via sdfat) drivers for your Android 9.0 phone.

## Will this add exFAT support to my \**phone name here*\* phone?
The answer is probably not, but if you can run `cat /proc/filesystems` and find `exfat` listed, and `logcat -d | grep exfat` says something like
```
04-21 17:30:33.015   600   608 E vold    : public:179,1 unsupported filesystem exfat
```
...then there's a high chance this module will work for you.

## What was this made for?
I had compiled a [custom kernel with the sdfat drivers in-kernel for the Razer Phone 2](https://github.com/thecubed/android_kernel_razer_sdm845) and vold was still unhappy with my sd card.

## How do I use this?
Put this zip file on your SD card and use Magisk Manager to install it. Reboot phone, and you're good to go.

## Proof?!
![proof](https://i.imgur.com/UUPZl8Vl.png)
-Taken from my Razer Phone 2

## Distribution point

Find newest development at https://github.com/thecubed/magisk-exfat-utils
