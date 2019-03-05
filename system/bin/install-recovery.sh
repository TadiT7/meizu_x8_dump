#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2e9df08a75612a370291f450a028d4b2426abf86; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:d65876940e6eb3f904b6dd84cb45fc9d9944bf4a EMMC:/dev/block/bootdevice/by-name/recovery 2e9df08a75612a370291f450a028d4b2426abf86 67108864 d65876940e6eb3f904b6dd84cb45fc9d9944bf4a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
