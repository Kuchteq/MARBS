title: Foot guide for MARBS users
author: Mariusz Kuchta

## Configuration files
See ~/.config/foot/foot.ini which is a symlink to either foot_dark.ini or foot_light.ini. These configs should be mirrored whenever you make changes to anything but the color scheme. The actual terminal that is run by default is a wrapper script called footie, that has to do with client-server architecture and the colors are respecified there. If you don't care about a bit more overhead when spawning a new terminal, you can change the TERMINAL variable in ~/.config/shell/profile to foot and the termcmd inside ~/.local/src/dwl/config.h accordingly.

## Window management
- MOD + j – go to next window in the stack
- MOD + k – go to previous window in the stack
- MOD + Enter – make the current window the master
- MOD + Shift + c – close the current window
- MOD + Number [1–9] – view a given tag
- MOD + Shift + Number [1–9] – move the current window to a given tag
- MOD + Tab – toggle between the last two visited windows
- MOD + t – set the layout mode to tiling
- MOD + m – set the layout mode to monocle
- MOD + | – set the layout mode to equal vertical windows
- MOD + f – make the current window full screen (this is different to setting the layout to monocle)
- MOD + , – shift focus to the monitor left of focused monitor
- MOD + . – shift focus to the monitor right of focused monitor (if you have only two monitors, it doesn't really matter as it wraps around)
- MOD + Shift + , – move the current window to a monitor left of it MOD + Shift + . – move the current window to a monitor right of it
- MOD + Mouse left hold – freely move the window around. This makes your window no longer tiled but rather floating! To make it tile itself again, press MOD + Shift + Space.
- MOD + Shift + space – toggle between making a given window floating or non–floating.
- MOD + Mouse right hold – freely resize the window using mouse. Again this makes your window floating.
