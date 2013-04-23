# B2G for Kyocera ISW11K

## Prerequisite

 * ISW12K

 B2G for ISW11K needs some files in ISW12K.

## Build

    $ git clone git://github.com/mozilla-b2g/B2G.git
    $ cd B2G
    $ hg clone http://hg.mozilla.org/l10n-central/ja gecko-l10n/ja
    $ wget https://raw.github.com/hiikezoe/android_device_kyocera_isw11k/b2g/isw11k.xml
    $ DEVICE=isw11k ./config.sh isw11k isw11k.xml (*1)

extract Qualcomm Adreno driver[1] into vendor/qcom/adreno200/proprietary/.

    $ ./build.sh

[1] https://developer.qualcomm.com/download/adreno200-aulinuxandroidicschococs04000306001.zip

(*1) Need https://github.com/hiikezoe/B2G/commit/1a6103a459bc9ca6b4a26a927776b36fe0e188d0

## Install
    $ dd if=boot.img of=/dev/block/mmcblk0p8 bs=512
    $ dd if=system.img of=/dev/block/mmcblk0p12 bs=512
    $ dd if=userdata.img of=/dev/block/mmcblk0p13 bs=512

## Boot modes

### Recovery Mode

    Volume up + Power on

### 0482:0543

    Connect USB cable without battery

## Partition

    mmcblk0p1  AMMS
    mmcblk0p2
    mmcblk0p3
    mmcblk0p4
    mmcblk0p5  APPSBL
    mmcblk0p6
    mmcblk0p7
    mmcblk0p8  boot
    mmcblk0p9
    mmcblk0p10
    mmcblk0p11
    mmcblk0p12 system
    mmcblk0p13 data
    mmcblk0p14 persist
    mmcblk0p15 cache
    mmcblk0p16 recovery
    mmcblk0p17 system/kcjprop/rw
    mmcblk0p18 cache/delta
    mmcblk0p19 FOTA
    mmcblk0p20
    mmcblk0p21 DNAND
    mmcblk0p22 FIB
    mmcblk0p23 misc
