#!/sbin/busybox sh

# Remap boot and FOTAKernel for LK setups in recovery

# Remove existing nodes for boot and FOTA
rm -f /dev/block/mmcblk0p24
rm -f /dev/block/mmcblk0p27

# Create remapped nodes
mknod -m 600 /dev/block/mmcblk0p24 b 179 24
mknod -m 600 /dev/block/mmcblk0p27 b 179 27

