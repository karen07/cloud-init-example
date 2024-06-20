#!/bin/sh
qemu \
    -enable-kvm \
    -smp 4 \
    -m 7G \
    -cpu host \
    -nographic \
    -cdrom img/cidata.iso \
    -device virtio-net-pci,mac=ec:a2:6f:c6:6b:2a,netdev=hn0 \
    -netdev bridge,br=br-lan,id=hn0 \
    -device nvme,serial=deadbeef,drive=nvm \
    -drive file=,if=none,id=nvm
