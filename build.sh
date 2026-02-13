#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
repo sync

rm -rf hardware/qcom-caf/common
rm -rf hardware/xiaomi
rm -rf device/xiaomi/warm-kernel
rm -rf device/xiaomi/warm
rm -rf vendor/xiaomi/warm

git clone https://github.com/zaraknyu/android_device_xiaomi_warm -b lineage-23.2 device/xiaomi/warm
git clone https://github.com/zaraknyu/android_vendor_xiaomi_warm -b lineage-23.2 vendor/xiaomi/warm
git clone https://github.com/zaraknyu/android_device_xiaomi_warm-kernel -b lineage-23.2 device/xiaomi/warm-kernel
git clone https://github.com/zaraknyu/android_hardware_qcom-caf_common -b lineage-23.2 hardware/qcom-caf/common
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi

source build/envsetup.sh
lunch lineage_warm-bp4a-userdebug
mka bacon
