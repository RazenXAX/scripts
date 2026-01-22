#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh

rm -rf device/xiaomi/warm
git clone https://github.com/RazenXAX/android_device_xiaomi_warm device/xiaomi/warm

source build/envsetup.sh
lunch lineage_warm-bp2a-userdebug
mka bacon


# IF FAILED THEN THIS IS THE FIX
export SKIP_ABI_CHECKS
mka bacon
