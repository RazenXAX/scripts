#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh

# Removing used directories
rm -rf device/xiaomi/warm
rm -rf device/xiaomi/warm-kernel
rm -rf vendor/xiaomi/warm
rm -rf hardware/qcom-caf/common
rm -rf hardware/xiaomi

git clone https://github.com/sm4635-development/android_device_xiaomi_warm -b lineage-23.0 device/xiaomi/warm
git clone https://github.com/sm4635-development/android_vendor_xiaomi_warm -b lineage-23.0 vendor/xiaomi/warm
git clone https://github.com/sm4635-development/android_device_xiaomi_warm-kernel -b lineage-23.0 device/xiaomi/warm-kernel
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
git clone https://github.com/sm4635-development/android_hardware_qcom-caf_common -b lineage-23.0 hardware/qcom-caf/common

# Building
source build/envsetup.sh
lunch lineage_warm-bp2a-userdebug
mka bacon -j$(nproc --all)

# Upload file to TMP GOFILE
curl -F "file=@out/target/product/warm/lineage-23.0*UNOFFICIAL*.zip" https://store2.gofile.io/uploadFile
