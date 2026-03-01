#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
/opt/crave/resync.sh

rm -rf hardware/xiaomi
rm -rf hardware/dolby
rm -rf vendor/xiaomi/warm-firmware
rm -rf device/xiaomi/warm-kernel
rm -rf hardware/qcom-caf/common
rm -rf vendor/xiaomi/warm
rm -rf device/xiaomi/warm

git clone https://github.com/xiaomi-sm4635-development/device_xiaomi_warm -b lineage-23.2 device/xiaomi/warm
git clone https://github.com/xiaomi-sm4635-development/vendor_xiaomi_warm -b lineage-23.2 vendor/xiaomi/warm
git clone https://github.com/xiaomi-sm4635-development/hardware_qcom-caf_common -b lineage-23.2 hardware/qcom-caf/common
git clone https://github.com/xiaomi-sm4635-development/vendor_xiaomi_warm-firmware -b main vendor/xiaomi/warm-firmware
git clone https://github.com/xiaomi-sm4635-development/device_xiaomi_warm-kernel -b main device/xiaomi/warm-kernel
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b xiaomi-1.0 hardware/dolby
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi

source build/envsetup.sh
lunch lineage_warm-bp4a-userdebug
mka bacon
