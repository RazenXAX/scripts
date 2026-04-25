#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
/opt/crave/resync.sh

rm -rf device/samsung/a34x
rm -rf vendor/samsung/a34x
rm -rf hardware/samsung

git clone https://github.com/zaraknyu/android_device_samsung_a34x -b lineage-23.2 device/samsung/a34x
git clone https://github.com/zaraknyu/android_vendor_samsung_a34x -b lineage-23.2 vendor/samsung/a34x
git clone https://github.com/LineageOS/android_hardware_samsung -b lineage-23.2 hardware/samsung

source build/envsetup.sh
lunch lineage_a34x-bp4a-eng
mka bacon
