#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Edited: MAY 2012 Alfrix (Alfredo Monclus)

DEVICE=galaxysl
MANUFACTURER=samsung

# Create full tree

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/{baseimage/{bin,lib/{dsp,firmware}},bluetooth/lib/firmware,camera,gps/{bin,lib/hw},keychars,lpm/{bin,lib},ril/{bin,lib},sensors/{bin,lib/hw},vibrator/{bin,lib},wifi/{bin,lib}}

# Just in case it fails
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bluetooth/lib/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/keychars
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ril/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ril/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/vibrator/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/vibrator/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin

#baseimage
adb pull /system/bin/cexec.out ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/bin/cexec.out
adb pull /system/lib/libbridge.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/libbridge.so
adb pull /system/lib/dsp/720p_h264vdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/720p_h264vdec_sn.dll64P
adb pull /system/lib/dsp/720p_mp4vdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/720p_mp4vdec_sn.dll64P
adb pull /system/lib/dsp/720p_mp4venc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/720p_mp4venc_sn.dll64P
adb pull /system/lib/dsp/baseimage.dof ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/baseimage.dof
adb pull /system/lib/dsp/baseimage.map ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/baseimage.map
adb pull /system/lib/dsp/chromasuppress.l64p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/chromasuppress.l64p
adb pull /system/lib/dsp/conversions.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/conversions.dll64P
adb pull /system/lib/dsp/dctn_dyn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/dctn_dyn.dll64P
adb pull /system/lib/dsp/ddspbase_tiomap3430.dof64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/ddspbase_tiomap3430.dof64P
adb pull /system/lib/dsp/dfgm.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/dfgm.dll64P
adb pull /system/lib/dsp/dynbase_tiomap3430.dof64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/dynbase_tiomap3430.dof64P
adb pull /system/lib/dsp/eenf_ti.l64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/eenf_ti.l64P
adb pull /system/lib/dsp/h264vdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/h264vdec_sn.dll64P
adb pull /system/lib/dsp/h264venc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/h264venc_sn.dll64P
adb pull /system/lib/dsp/ipp_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/ipp_sn.dll64P
adb pull /system/lib/dsp/jpegdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/jpegdec_sn.dll64P
adb pull /system/lib/dsp/jpegenc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/jpegenc_sn.dll64P
adb pull /system/lib/dsp/m4venc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/m4venc_sn.dll64P
adb pull /system/lib/dsp/monitor_tiomap3430.dof64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/monitor_tiomap3430.dof64P
adb pull /system/lib/dsp/mp3dec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mp3dec_sn.dll64P
adb pull /system/lib/dsp/mp4v720parcdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mp4v720parcdec_sn.dll64P
adb pull /system/lib/dsp/mp4varcdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mp4varcdec_sn.dll64P
adb pull /system/lib/dsp/mp4vdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mp4vdec_sn.dll64P
adb pull /system/lib/dsp/mpeg4aacdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mpeg4aacdec_sn.dll64P
adb pull /system/lib/dsp/mpeg4aacenc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mpeg4aacenc_sn.dll64P
adb pull /system/lib/dsp/mpeg4aridec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/mpeg4aridec_sn.dll64P
adb pull /system/lib/dsp/nbamrdec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/nbamrdec_sn.dll64P
adb pull /system/lib/dsp/nbamrenc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/nbamrenc_sn.dll64P
adb pull /system/lib/dsp/postprocessor_dualout.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/postprocessor_dualout.dll64P
adb pull /system/lib/dsp/qosdyn_3430.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/qosdyn_3430.dll64P
adb pull /system/lib/dsp/ringio.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/ringio.dll64P
adb pull /system/lib/dsp/star.l64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/star.l64P
adb pull /system/lib/dsp/usn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/usn.dll64P
adb pull /system/lib/dsp/vpp_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/vpp_sn.dll64P
adb pull /system/lib/dsp/wbamrenc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/wbamrdec_sn.dll64P
adb pull /system/lib/dsp/wbamrenc_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/wbamrenc_sn.dll64P
adb pull /system/lib/dsp/wmadec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/wmadec_sn.dll64P
adb pull /system/lib/dsp/wmv9dec_sn.dll64P ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/wmv9dec_sn.dll64P
adb pull /system/lib/dsp/yuvconvert.l64p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/baseimage/lib/dsp/yuvconvert.l64p
#bluetooth
adb pull /system/vendor/firmware/TIInit_7.2.31.bts ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bluetooth/lib/firmware/TIInit_7.2.31.bts
#camera
adb pull /system/firmware/CE147F00.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera/CE147F00.bin
adb pull /system/firmware/CE147F01.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera/CE147F01.bin
adb pull /system/firmware/CE147F02.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera/CE147F02.bin
adb pull /system/firmware/CE147F03.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera/CE147F03.bin
adb pull /system/cameradata/datapattern_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera/datapattern_420sp.yuv
adb pull /system/cameradata/datapattern_front_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/camera/datapattern_front_420sp.yuv
#firmware
adb pull /system/vendor/firmware/samsung_mfc_fw.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware/samsung_mfc_fw.bin
#gps
adb pull /system/vendor/bin/66ca3eb6.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/66ca3eb6.0
adb pull /system/vendor/bin/7651b327.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/7651b327.0
adb pull /system/vendor/bin/803ca020.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/803ca020.0
adb pull /system/vendor/bin/8c7fccef.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/8c7fccef.0
adb pull /system/vendor/bin/c9dbfc2e.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/c9dbfc2e.0
adb pull /system/vendor/bin/ddc328ff.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/ddc328ff.0
adb pull /system/vendor/bin/ed62f4e3.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/ed62f4e3.0
adb pull /system/vendor/bin/f0b6e66f.0 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/f0b6e66f.0
adb pull /system/vendor/bin/gpsd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/bin/gpsd
adb pull /system/lib/hw/gps.omap3.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/lib/hw/gps.latona.so
adb pull /system/vendor/etc/gps.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/gps.xml
adb pull /system/etc/gps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps/gps.conf

#graphics (the rest is from rowboat)
adb pull /system/lib/lib_R2VS_ARM_GA_Library_for_Aries.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/graphics/lib/lib_R2VS_ARM_GA_Library_for_Aries.so

#keychars
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/keychars/qwerty.kcm.bin
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/keychars/qwerty2.kcm.bin
adb pull /system/usr/keychars/sec_key.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/keychars/sec_key.kcm.bin
adb pull /system/usr/keychars/sec_touchscreen.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/keychars/sec_touchscreen.kcm.bin
#lpm
adb pull /system/bin/charging_mode ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/bin/charging_mode
adb pull /system/bin/playlpm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/bin/playlpm
adb pull /system/lib/libQmageDecoder.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/lib/libQmageDecoder.so
adb pull /system/lib/libquramimagecodec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/lib/libquramimagecodec.so
adb pull /system/lib/libquramvdecoder.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/lib/libquramvdecoder.so
adb pull /system/media/battery_charging_5.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_5.qmg
adb pull /system/media/battery_charging_10.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_10.qmg
adb pull /system/media/battery_charging_15.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_15.qmg
adb pull /system/media/battery_charging_20.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_20.qmg
adb pull /system/media/battery_charging_25.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_25.qmg
adb pull /system/media/battery_charging_30.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_30.qmg
adb pull /system/media/battery_charging_35.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_35.qmg
adb pull /system/media/battery_charging_40.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_40.qmg
adb pull /system/media/battery_charging_45.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_45.qmg
adb pull /system/media/battery_charging_50.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_50.qmg
adb pull /system/media/battery_charging_55.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_55.qmg
adb pull /system/media/battery_charging_60.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_60.qmg
adb pull /system/media/battery_charging_65.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_65.qmg
adb pull /system/media/battery_charging_70.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_70.qmg
adb pull /system/media/battery_charging_75.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_75.qmg
adb pull /system/media/battery_charging_80.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_80.qmg
adb pull /system/media/battery_charging_85.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_85.qmg
adb pull /system/media/battery_charging_90.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_90.qmg
adb pull /system/media/battery_charging_95.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_95.qmg
adb pull /system/media/battery_charging_100.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/battery_charging_100.qmg
adb pull /system/media/chargingwarning.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/chargingwarning.qmg
adb pull /system/media/Disconnected.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lpm/media/Disconnected.qmg
#ril
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ril/bin/rild
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ril/lib/libsec-ril.so
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ril/lib/libsecril-client.so
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ril/lib/libril.so
#sensors
adb pull /system/bin/geomagneticd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors/bin/geomagneticd
adb pull /system/bin/orientationd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors/bin/orientationd
adb pull /system/lib/hw/lights.omap3.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors/lib/hw/lights.latona.so
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors/lib/hw/sensors.default.so
#vibrator
adb pull /system/bin/immvibed ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/vibrator/bin/immvibed
adb pull /system/lib/libImmVibeJ.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/vibrator/lib/libImmVibeJ.so
#wifi
adb pull /system/bin/tiap_cu ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin/tiap_cu
adb pull /system/bin/tiap_loader ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin/tiap_loader
adb pull /system/bin/tiwlan_cu ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin/tiwlan_cu
adb pull /system/bin/tiwlan_loader ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin/tiwlan_loader
adb pull /system/bin/tiwlan_plts ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin/tiwlan_plts
adb pull /system/bin/wpa_supplicant ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/bin/wpa_supplicant



(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/samsung/galaxysl/proprietary/ril/lib/libril.so:obj/lib/libril.so


# All the blobs necessary for galaxysl

# firmware
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/samsung_mfc_fw.bin:system/firmware/samsung_mfc_fw.bin

# graphics
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/bin/pvrsrvinit:system/bin/pvrsrvinit \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/bin/pvrsrvctl:system/bin/pvrsrvctl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libglslcompiler.so:system/lib/libglslcompiler.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libIMGegl.so:system/lib/libIMGegl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libpvr2d.so:system/lib/libpvr2d.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libsrv_init.so:system/lib/libsrv_init.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libsrv_um.so:system/lib/libsrv_um.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/libusc.so:system/lib/libusc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/egl/libEGL_POWERVR_SGX530_125.so:system/lib/egl/libEGL_POWERVR_SGX530_125.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/egl/libGLESv2_POWERVR_SGX530_125.so:system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/graphics/lib/hw/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so

# dsp
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/bin/cexec.out:system/bin/cexec.out \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/libbridge.so:system/lib/libbridge.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/720p_h264vdec_sn.dll64P:system/lib/dsp/720p_h264vdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/720p_mp4vdec_sn.dll64P:system/lib/dsp/720p_mp4vdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/720p_mp4venc_sn.dll64P:system/lib/dsp/720p_mp4venc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/baseimage.dof:system/lib/dsp/baseimage.dof \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/baseimage.map:system/lib/dsp/baseimage.map \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/chromasuppress.l64p:system/lib/dsp/chromasuppress.l64p \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/conversions.dll64P:system/lib/dsp/conversions.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/dctn_dyn.dll64P:system/lib/dsp/dctn_dyn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/ddspbase_tiomap3430.dof64P:system/lib/dsp/ddspbase_tiomap3430.dof64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/dfgm.dll64P:system/lib/dsp/dfgm.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/dynbase_tiomap3430.dof64P:system/lib/dsp/dynbase_tiomap3430.dof64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/eenf_ti.l64P:system/lib/dsp/eenf_ti.l64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/ipp_sn.dll64P:system/lib/dsp/ipp_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/jpegdec_sn.dll64P:system/lib/dsp/jpegdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/monitor_tiomap3430.dof64P:system/lib/dsp/monitor_tiomap3430.dof64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mp4v720parcdec_sn.dll64P:system/lib/dsp/mp4v720parcdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mp4varcdec_sn.dll64P:system/lib/dsp/mp4varcdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/mpeg4aridec_sn.dll64P:system/lib/dsp/mpeg4aridec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/qosdyn_3430.dll64P:system/lib/dsp/qosdyn_3430.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/ringio.dll64P:system/lib/dsp/ringio.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/star.l64P:system/lib/dsp/star.l64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/usn.dll64P:system/lib/dsp/usn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/vpp_sn.dll64P:system/lib/dsp/vpp_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/baseimage/lib/dsp/yuvconvert.l64p:system/lib/dsp/yuvconvert.l64p

# keychars
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/keychars/sec_key.kcm.bin:system/usr/keychars/sec_key.kcm.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/keychars/sec_touchscreen.kcm.bin:system/usr/keychars/sec_touchscreen.kcm.bin

# ril
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ril/bin/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ril/lib/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ril/lib/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ril/lib/libsec-ril.so:system/lib/libsec-ril.so

# sensors
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors/bin/geomagneticd:system/bin/geomagneticd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors/bin/orientationd:system/bin/orientationd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so

# vibrator
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/vibrator/bin/immvibed:system/bin/immvibed \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/vibrator/lib/libImmVibeJ.so:system/lib/libImmVibeJ.so

# wifi
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bin/tiap_cu:system/bin/tiap_cu \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bin/tiap_loader:system/bin/tiap_loader \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bin/tiwlan_cu:system/bin/tiwlan_cu \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bin/tiwlan_loader:system/bin/tiwlan_loader \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bin/tiwlan_plts:system/bin/tiwlan_plts \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/bin/wpa_supplicant:system/bin/wpa_supplicant

# bluetooth
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bluetooth/lib/firmware/TIInit_7.2.31.bts:root/lib/firmware/TIInit_7.2.31.bts

# gps
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/8c7fccef.0:system/vendor/bin/8c7fccef.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/66ca3eb6.0:system/vendor/bin/66ca3eb6.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/803ca020.0:system/vendor/bin/803ca020.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/7651b327.0:system/vendor/bin/7651b327.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/c9dbfc2e.0:system/vendor/bin/c9dbfc2e.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/ddc328ff.0:system/vendor/bin/ddc328ff.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/ed62f4e3.0:system/vendor/bin/ed62f4e3.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/f0b6e66f.0:system/vendor/bin/f0b6e66f.0 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/bin/gpsd:system/vendor/bin/gpsd \\
	vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/gps.xml:system/vendor/etc/gps.xml \\
	vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/gps.conf:system/etc/gps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps/lib/hw/gps.latona.so:system/lib/hw/gps.latona.so

# camera
PRODUCT_COPY_FILES += \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera/CE147F00.bin:system/firmware/CE147F00.bin \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera/CE147F01.bin:system/firmware/CE147F01.bin \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera/CE147F02.bin:system/firmware/CE147F02.bin \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera/CE147F03.bin:system/firmware/CE147F03.bin

# lpm
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/bin/charging_mode:system/bin/charging_mode \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/bin/playlpm:system/bin/playlpm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/lib/libquramimagecodec.so:system/lib/libquramimagecodec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/lib/libquramvdecoder.so:system/lib/libquramvdecoder.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/chargingwarning.qmg:system/media/chargingwarning.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lpm/media/Disconnected.qmg:system/media/Disconnected.qmg
	
EOF


./setup-makefiles.sh