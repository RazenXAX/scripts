#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh

rm -rf device/xiaomi/warm
rm -rf vendor/xiaomi/warm
rm -rf hardware/qcom-caf/common
rm -rf hardware/xiaomi
rm -rf device/xiaomi/warm-kernel

git clone https://github.com/zaraknyu/android_device_xiaomi_warm -b lineage-23.0 device/xiaomi/warm
git clone https://github.com/zaraknyu/android_vendor_xiaomi_warm -b lineage-23.0 vendor/xiaomi/warm
git clone https://github.com/zaraknyu/android_device_xiaomi_warm-kernel -b lineage-23.0 device/xiaomi/warm-kernel
git clone https://github.com/zaraknyu/android_hardware_qcom-caf_common -b lineage-23.0 hardware/qcom-caf/common
git clone https://github.com/lineageos/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi

source build/envsetup.sh
lunch lineage_warm-bp2a-userdebug
mka bacon

# IF FAILED THEN THIS IS THE FIX
export SKIP_ABI_CHECKS
mka bacon
