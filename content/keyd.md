---
title: "keyd"
date: 2022-12-21T17:07:04-05:00
---

keyd is a keyboard remapping daemon.
This app allows for microcontroller-level customizability of any keyboard similar to the one present on QMK firmware keyboards.

## Configuration files

- `~/.config/keyd/default` - The main keyd configuration file. The actual place keyd reads it off is located at `/etc/keyd/default.conf` but MARBS script symlinks the aforementioned location for consistency.
- `~/.config/xkb/symbols/plde` - The keyboard layout file which specifies how all the keys are interpreted inside wayland. It is different than the above as that one works more closer to the hardware itself. Contains the visualization found below. 

## Running

The daemon is managed by the system service manager by default and starts up on every boot (unless the user has turned it off in MARBS script).

## Notable changes that the daemon makes to your keyboard
- The caps lock key is now control on hold and escape on swift tap
- The alt is swapped with "windows key"
- The front and back slash are swapped. But you can still input backslash if you hold the left corner control with the new front slash. Similarly, you input the pipe symbol by holding AltGr with the new front slash.

## Layout visualization

{{< img src="/pix/marbs_plde_visualization.png" class="fullwidth" >}}

## Notes
MARBS's keybindings all throughout the system are designed to be used with an ANSI (American style) layout keyboards. If you are using the ISO layout, for example on a Swedish keyboard things may not work out.
