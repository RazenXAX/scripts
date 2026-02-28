####################################
# from generate-common-build-props
# These properties identify this partition image.
####################################
ro.product.odm.brand=Xiaomi
ro.product.odm.device=warm
ro.product.odm.manufacturer=Xiaomi
ro.product.odm.model=warm
ro.product.odm.name=warm_global
ro.product.odm.cert=warm
ro.product.odm.marketname=warm
ro.product.model_for_attestation=warm
ro.product.brand_for_attestation=Xiaomi
ro.product.name_for_attestation=miodm_warm_global
ro.product.manufacturer_for_attestation=Xiaomi
ro.product.device_for_attestation=warm
ro.vendor.build.fingerprint=Xiaomi/warm_global/warm:14/UKQ1.240624.001/OS2.0.203.0.VGVINXM:user/release-keys
ro.odm.product.cpu.abilist=arm64-v8a
ro.odm.product.cpu.abilist32=
ro.odm.product.cpu.abilist64=arm64-v8a
ro.odm.build.date=Tue Oct 21 21:54:22 CST 2025
ro.odm.build.date.utc=1761054862
ro.odm.build.fingerprint=Xiaomi/warm_global/warm:14/UKQ1.240624.001/OS2.0.203.0.VGVINXM:user/release-keys
ro.odm.build.id=UKQ1.240624.001
ro.odm.build.tags=release-keys
ro.odm.build.type=user
ro.odm.build.version.incremental=OS2.0.203.0.VGVINXM
ro.odm.build.version.release=14
ro.odm.build.version.release_or_codename=14
ro.odm.build.version.sdk=34
####################################
# from variable ADDITIONAL_ODM_PROPERTIES
####################################
ro.product.first_api_level=34
ro.product.board=pitti
ro.vendor.qti.va_odm.support=1
####################################
# from variable PRODUCT_ODM_PROPERTIES
####################################
vendor.display.force_tonemapping=1
ro.vendor.audio.karaoke.enable=true
ro.miui.audio.karaoke.suppot.lowlatency=true
ro.vendor.audio.camera.loopback.support=false
ro.vendor.audio.identify_devicelevel=0
vendor.audio.timecheck_timeoutMs=6000
persist.vendor.radio.dynamic_sar=1
import /odm/etc/${ro.boot.product.hardware.sku}_build.prop
import /odm/etc/${ro.boot.product.hardware.sku}_${ro.boot.ptcountrycode}_build.prop
# end of file

