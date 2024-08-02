---
title: "ISO"
date: 2024-03-08T11:55:19-08:00
---

Want to check out MARBS without first installing it? Grab the ISO from here:

### [💿 ISO download](/marbs.iso)

On Linux you can burn it to your pendrive using 
```fish
sudo dd if=marbs.iso of=/dev/sdx status='progress'
```
where *sdax* is the pendrive device.

On Windows, you can download [rufus](https://rufus.ie) and burn the image with it.

This iso is based on Artix Linux with Dinit.

You can also use QEMU to try out MARBS on a virtual machine. The complete command to run MARBS with kvm, virtio accelerated display and sound (based on pipewire) would be:

qemu-system-x86_64 -boot d -cdrom marbs.iso  -machine type=q35,accel=kvm -cpu host -m 4084 -device virtio-vga-gl -display sdl,gl=on -usb -device usb-tablet -device virtio-sound-pci,audiodev=audio0 -audiodev pipewire,id=audio0

Remember to install required QEMU dependencies first.
