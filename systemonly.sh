#!/bin/bash

repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
/opt/crave/resync.sh
rm -rf device/xiaomi/warm
git clone https://github.com/zaraknyu/android_device_xiaomi_warm-sysonly -b lineage-23.2 device/xiaomi/warm
source build/envsetup.sh
lunch lineage_warm-bp4a-userdebug
mka bacon
