---
title: "keyd"
date: 2022-12-21T17:07:04-05:00
---

keyd is a keyboard remapping daemon.
This app allows for microcontroller-level customizability of any keyboard similar to the one present on QMK firmware keyboards.

## Running

The daemon is managed by the system service manager by default and starts up on every boot (unless the user has declined it in MARBS script).

## Bindings
### [🗎 PDF cheat sheet](/keyd_guide.pdf)
- <kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd> <kbd>l</kbd> (vim keys) to move around and enter directories and open files.

## keyd's configuration files

- `~/.config/keyd/default` -- The main keyd configuration file. The actual place keyd reads it off is located at `/etc/keyd/default.conf` but MARBS script symlinks the aforementioned location for consistency.

---

## Notes
MARBS's keybindings all throughout the system are designed to be used with an ANSI (American style) layout keyboards. If you are using the ISO layout, for example on a swedish keyboard things may not work out.
