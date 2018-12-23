#!/bin/sh
rootdirectory="$PWD"
dirs="device kernel-3.18 vendor/mediatek/proprietary/custom vendor/mediatek/proprietary/hardware"

for dir in $dirs ; do
    cd $rootdirectory
    cd $dir
    echo "Applying $dir patches..."
    git apply $rootdirectory/patches/$dir/*.patch
done

cd $rootdirectory
cp patches/modems/Android.mk modems/Android.mk

echo "Done!"
