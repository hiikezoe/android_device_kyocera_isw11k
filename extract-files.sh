#!/bin/sh

VENDOR=kyocera
DEVICE=msm7630

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling device files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

find $BASE/bin -type f | xargs chmod +x

../msm7630/setup-gaia-configs.sh
./setup-makefiles.sh
