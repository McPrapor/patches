#!/bin/sh
rootdirectory="$PWD"
dirs="device kernel-3.18 vendor/mediatek/proprietary/custom vendor/mediatek/proprietary/hardware"

for dir in $dirs ; do
    cd $rootdirectory
    cd $dir
    echo "Cleaning $dir patches..."
    git checkout -- . && git clean -df
done

cd $rootdirectory
rm modems/Android.mk

echo "Done!"
