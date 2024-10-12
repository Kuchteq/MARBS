title: Foot guide for MARBS users
author: Mariusz Kuchta

## Configuration files & help
See *~/.config/foot/foot.ini* which is a symlink to either *foot\_dark.ini* or *foot_light.ini*. These configs should be mirrored whenever you make changes to anything but the color scheme. See `man 1 foot` for overview of all keybindings, `man 5 foot.ini` for config options, `man 7 foot-ctlseqs` for discovering available **[control sequences](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797)**.Don't manually change opacity of the terminal. Instead use **termopacity** script as those values are defined in more than one place.

## Keybindings
| *Key combo* | *functionality* |
|:-----------|:--------------|
| | |
| `MOD + Space` | Spawn another terminal window in the same directory. |
| `Shift + PgUp/PgDn` | scroll up or down in the terminal history. |
| `Ctrl + -` | Decrease terminal font size. |
| `Ctrl + +` | Increase terminal font size. |
| `Ctrl + Shift + R` | enter search mode. |
| `Ctrl + k` | (in search mode) go to next result. |
| `Ctrl + j` | (in search mode) go to previous result. |
| `Ctrl + w` | (in search mode) extend selection by a word. |
| `Enter` | (in search mode) copy selected text to foot clipboard. |
| `Ctrl + Shift + I` | paste text from foot clipboard. |
| `Ctrl + Shift + U` | detect URL and OSC 8 links in the terminal (handled by bemenuhandler) |
| `Ctrl + Shift + C` | transfer foot clipboard text to system clipboard. |
| `Ctrl + Shift + V` | paste from system clipboard.
