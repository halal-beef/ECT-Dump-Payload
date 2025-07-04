#!/bin/bash

file="boot-ect-embedded.bin"
seek_offset=0x200000

echo "Waiting for recovery device..."
adb wait-for-usb-recovery

echo "Phone detected."

echo "Dumping boot..."
adb shell "cat /dev/block/by-name/boot >> /tmp/$file"
adb pull "/tmp/$file"
echo "Boot dumped."

echo "Extracting ECT..."

echo "ECT size is 80KiB, truncating..."

dd if="$file" of=ect.app bs=1 skip=$((seek_offset)) count=$((0x14000)) 2>/dev/null
echo "ECT Extracted! It is stored in $(pwd)/ect.app"
