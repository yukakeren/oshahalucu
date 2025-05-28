#!/bin/bash
qemu-system-x86_64 -cdrom mylinux.iso -m 256 -nographic -serial mon:stdio -no-reboot
