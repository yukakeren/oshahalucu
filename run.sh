#!/bin/bash
qemu-system-x86_64 -smp 2 -m 256 -monitor /dev/null \
  -kernel bzImage -initrd myramdisk.gz \
  -append 'console=ttyS0 loglevel=3' -no-reboot -nographic
