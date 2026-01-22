#!/bin/bash

# Repo Init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh

git clone https://github.com/RazenXAX/android_device_xiaomi_warm device/xiaomi/warm

# Building
source build/envsetup.sh
lunch lineage_warm-bp2a-userdebug
mka bacon
