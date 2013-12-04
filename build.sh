#!/bin/sh

DEV_PATH=`xcode-select -print-path`
SDKVERSION=`ls ${DEV_PATH}/Platforms/MacOSX.platform/Developer/SDKs | awk 'match($0,/MacOSX.*sdk/){print substr($0,RSTART+6,4)}'`
CC=${DEV_PATH}/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
${CC} -o fruitstrap -framework CoreFoundation -framework MobileDevice -F/System/Library/PrivateFrameworks fruitstrap.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX${SDKVERSION}.sdk
