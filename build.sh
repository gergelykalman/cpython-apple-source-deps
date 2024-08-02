#!/bin/bash

set -e

make clean
make -j 12 ncurses-iOS
rm -rf ~/mac/python/repo/cross-build/iphoneos.arm64/ncurses*
cp -rv install/iOS/iphoneos.arm64/ncurses* ~/mac/python/repo/cross-build/iphoneos.arm64/
cd ~/mac/python/repo/cross-build/iphoneos.arm64/
ln -sf ncurses* ncurses

